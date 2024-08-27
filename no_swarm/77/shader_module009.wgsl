struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: bool = true;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: vec4<f32>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: f32, arg_3: Struct_1) -> f32 {
    let var_0 = _wgslsmith_sub_i32(firstLeadingBit(2147483647i), ~0i);
    let var_1 = global2.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, _wgslsmith_f_op_f32(1731f - _wgslsmith_f_op_f32(global3.x + -677f))))) - 1000f);
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global3.zww - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-287f, global3.x, arg_3.b) * vec3<f32>(-658f, arg_3.b, -600f))))))));
    let var_4 = arg_3;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.x) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -341f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_4.d.x + global3.x))))), 1840f));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-424f + _wgslsmith_f_op_f32(func_3(-arg_0.zy, 0u, global3.x, Struct_1(vec3<i32>(arg_0.x, arg_0.x, -15957i), global3.x, vec3<u32>(u_input.a, u_input.a, 23164u), global3.yyw))))));
    var var_1 = !global2.x;
    var var_2 = !global2.x & all(select(select(vec4<bool>(global2.x, false, false, global2.x), select(vec4<bool>(global2.x, false, true, global2.x), vec4<bool>(false, global2.x, global2.x, true), true), select(vec4<bool>(false, false, true, global2.x), vec4<bool>(true, global2.x, true, global2.x), global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), global2.x & !global2.x));
    let var_3 = Struct_1(~firstTrailingBit(vec3<i32>(arg_0.x, 0i, -51769i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * global3.x), ~(~vec3<u32>(~u_input.a, 24052u, 1u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + _wgslsmith_f_op_f32(min(485f, global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, var_0)) + _wgslsmith_f_op_f32(global3.x - -191f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global3.wyy - vec3<f32>(var_0, 924f, 428f)))))));
    let var_4 = 1u;
    return 4294967295u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_0.yx, reverseBits(reverseBits(vec2<u32>(arg_0.x, arg_0.x)))), _wgslsmith_clamp_u32(4294967295u | _wgslsmith_sub_u32(arg_0.x, 9586u), abs(_wgslsmith_div_u32(36597u, 3725u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.x, arg_0.x, 1u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.x, 48082u, u_input.a, arg_0.x), vec4<u32>(arg_0.x, 0u, 46403u, 5300u)))));
    global1 = global2.x;
    let var_1 = firstLeadingBit(vec2<u32>(~max(func_2(vec3<i32>(10223i, 10556i, -25183i)), select(arg_0.x, 84197u, false)), ~54011u));
    global1 = false;
    global3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)), -623f, 1103f, _wgslsmith_div_f32(-657f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -164f)))));
    return vec3<i32>(-_wgslsmith_add_i32(~14127i, max(3277i, -11248i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-20449i, 8970i, 0i) >> (vec3<u32>(var_1.x, var_0, 0u) % vec3<u32>(32u)), vec3<i32>(select(-12533i, 26612i, global2.x), reverseBits(-7490i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -25488i, 51421i, -13316i), vec4<i32>(1i, -17729i, 2147483647i, 38647i)))), _wgslsmith_mult_i32(-select(27953i, -7104i, global2.x), countOneBits(_wgslsmith_mult_i32(-27256i, 0i)))) << (vec3<u32>(5223u, u_input.a, _wgslsmith_sub_u32(_wgslsmith_div_u32(24953u, _wgslsmith_clamp_u32(u_input.a, 70224u, arg_0.x)), firstLeadingBit(_wgslsmith_sub_u32(var_1.x, u_input.a)))) % vec3<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    global1 = (6179i ^ _wgslsmith_dot_vec4_i32(arg_3, ~_wgslsmith_mod_vec4_i32(arg_3, vec4<i32>(arg_3.x, -1i, -26676i, arg_3.x)))) > _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -arg_3.x, firstTrailingBit(arg_3.x), arg_2.x), abs(_wgslsmith_mod_vec4_i32(firstTrailingBit(arg_3), vec4<i32>(arg_3.x, -9311i, arg_3.x, arg_2.x))));
    global2 = select(select(select(vec3<bool>(select(global2.x, arg_0, global2.x), any(vec4<bool>(true, global2.x, arg_0, global2.x)), true), !vec3<bool>(arg_0, arg_0, true), false), vec3<bool>(all(vec4<bool>(global2.x, arg_0, global2.x, false)), true, false), true), select(!(!(!vec3<bool>(true, global2.x, arg_0))), vec3<bool>(global2.x, true, true), select(!(true & arg_0), global2.x, (arg_1.x > global3.x) | arg_0)), all(vec3<bool>(false, arg_0, !(arg_0 | true))));
    var var_0 = countOneBits(firstLeadingBit(arg_3.www));
    var_0 = func_4(vec3<u32>(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), func_2(_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(arg_3.wyz, vec3<i32>(1i, arg_2.x, -2147483647i)), ~arg_3.wzz, arg_3.ywx)), u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.yy), arg_1)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -212f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.x, -587f)))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))));
    return Struct_1(min(arg_3.wzx, ~arg_3.wzz), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(205f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.x)))), global3.x)), ~abs(vec3<u32>(~u_input.a, u_input.a, ~15299u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2290f, -661f, 1528f) - vec3<f32>(global3.x, 235f, 1238f))), _wgslsmith_div_vec3_f32(global3.xwx, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_1.x, 1334f, -281f)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(189f, arg_1.x, -698f)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.x, 149f, 158f), vec3<f32>(-2223f, arg_1.x, 1133f)))), vec3<f32>(global3.x, arg_1.x, -721f), !vec3<bool>(global2.x, global2.x, true))), all(select(select(vec3<bool>(true, false, arg_0), vec3<bool>(true, false, global2.x), vec3<bool>(false, false, false)), !vec3<bool>(true, global2.x, global2.x), !vec3<bool>(true, true, arg_0))))));
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_1 {
    global2 = arg_1;
    let var_0 = func_1(arg_1.x, vec2<f32>(func_1(global2.x, vec2<f32>(_wgslsmith_f_op_f32(sign(arg_2.b)), arg_2.b), arg_2.a.zy, ~firstTrailingBit(vec4<i32>(arg_0, 0i, 2147483647i, 1i))).b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1562f, _wgslsmith_f_op_f32(-arg_3.x)), global3.x, 4294967295u != min(arg_2.c.x, 4294967295u)))), firstTrailingBit(vec2<i32>(func_1(arg_1.x, vec2<f32>(global3.x, -490f), arg_2.a.zx, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, arg_0, arg_2.a.x, arg_2.a.x), vec4<i32>(9010i, 0i, -2147483647i, -1i), vec4<i32>(arg_0, 1i, arg_0, arg_2.a.x))).a.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_0, arg_0), -103825i | arg_2.a.x))), vec4<i32>(~(0i ^ min(2147483647i, arg_0)), (-arg_0 >> (4294967295u % 32u)) ^ _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0, 2147483647i, -10379i), -arg_0), _wgslsmith_div_i32(-arg_0 & 0i, arg_0), i32(-1i) * -1i));
    var var_1 = any(select(!global2.xz, arg_1.zy, !arg_1.zz));
    global1 = !all(select(select(!vec4<bool>(arg_1.x, false, false, true), select(vec4<bool>(false, global2.x, arg_1.x, global2.x), vec4<bool>(arg_1.x, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, arg_1.x, global2.x)), select(vec4<bool>(arg_1.x, arg_1.x, false, true), vec4<bool>(arg_1.x, true, true, false), arg_1.x)), !(!vec4<bool>(false, false, arg_1.x, global2.x)), global2.x));
    var var_2 = arg_2;
    return func_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.xz)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(var_0.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.b))))), min(-vec2<i32>(~var_0.a.x, -12868i), select(_wgslsmith_clamp_vec2_i32(reverseBits(vec2<i32>(arg_0, arg_2.a.x)), var_2.a.xx, select(arg_2.a.zy, var_0.a.zz, global2.zz)), abs(vec2<i32>(var_0.a.x, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0, arg_2.a.x), vec3<i32>(arg_2.a.x, arg_2.a.x, arg_2.a.x)) == 34282i)), vec4<i32>(_wgslsmith_dot_vec3_i32(-var_0.a ^ vec3<i32>(var_0.a.x, 18176i, var_2.a.x), var_0.a), var_0.a.x, var_0.a.x, var_2.a.x));
}

fn func_6(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(-(~arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x * arg_2.d.x)), arg_2.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.x, arg_1.b, 1000f) + func_1(true, vec2<f32>(arg_1.b, -549f), vec2<i32>(72798i, 0i), vec4<i32>(25584i, arg_2.a.x, 0i, 0i)).d)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global3.zww * vec3<f32>(global3.x, 462f, arg_2.b))))));
    global3 = vec4<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.d.x))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-global3.x), false))) * _wgslsmith_div_f32(480f, _wgslsmith_f_op_f32(ceil(-1099f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) + _wgslsmith_f_op_f32(-global3.x)));
    global1 = global2.x;
    global1 = any(select(vec2<bool>(global2.x, any(vec4<bool>(true, global2.x, arg_0, arg_0)) == any(global2.yy)), !select(select(global2.zz, global2.zz, false), vec2<bool>(global2.x, arg_0), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, true)));
    global0 = var_0.a.x;
    return -393f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global3 = vec4<f32>(-1442f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(sign(global3.x)))), _wgslsmith_f_op_f32(func_6(true, Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -16639i, 0i), vec3<i32>(0i, 42650i, -13796i)), vec3<i32>(1i, 41941i, 1i)), _wgslsmith_div_f32(global3.x, 990f), vec3<u32>(~u_input.a, _wgslsmith_add_u32(u_input.a, u_input.a), 4294967295u ^ u_input.a), vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(-global3.x))), func_5(~(1i >> (u_input.a % 32u)), select(!vec3<bool>(global2.x, global2.x, false), select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, false, global2.x), vec3<bool>(true, global2.x, true)), all(vec4<bool>(false, true, true, false))), func_1(true, _wgslsmith_f_op_vec2_f32(global3.zx + vec2<f32>(897f, global3.x)), vec2<i32>(-67505i, 0i) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~vec4<i32>(45229i, -1i, 2147483647i, 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global3.zy, vec2<f32>(global3.x, global3.x)))))), global3.x);
    let var_1 = Struct_1(select(countOneBits(abs(func_5(0i, vec3<bool>(global2.x, true, true), Struct_1(vec3<i32>(30948i, -1i, -53933i), global3.x, vec3<u32>(u_input.a, u_input.a, 0u), vec3<f32>(global3.x, 1707f, global3.x)), vec2<f32>(global3.x, 575f)).a)), vec3<i32>(_wgslsmith_add_i32(-2147483647i, 1i), _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, -5252i), 2147483647i), reverseBits(1i)), vec3<bool>(all(select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, true), false)), global2.x, global2.x)), -1523f, ~(~vec3<u32>(1u, u_input.a, _wgslsmith_mod_u32(u_input.a, u_input.a))), _wgslsmith_div_vec3_f32(global3.wyw, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(746f, 1758f, -411f) + _wgslsmith_f_op_vec3_f32(global3.yyy + global3.wyx)) * global3.xwz)));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_div_i32(max(var_1.a.x, reverseBits(1i) & max(var_1.a.x, var_1.a.x)), abs(var_1.a.x)), var_1.a.x);
    var var_3 = func_5(1i, select(vec3<bool>(all(select(vec2<bool>(global2.x, false), vec2<bool>(global2.x, false), global2.yz)), true || any(vec4<bool>(global2.x, true, true, global2.x)), global2.x), !vec3<bool>(true, !global2.x, global2.x), global2.x), var_1, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(1667f)), _wgslsmith_f_op_f32(var_1.b + global3.x)) + vec2<f32>(global3.x, var_1.b)), global3.wx, true)));
    let var_4 = global2.x;
    var var_5 = _wgslsmith_mult_u32(var_1.c.x, 86605u);
    var var_6 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(var_1.b + 824f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_3.b, -731f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.d.x, 918f)))))));
    var var_7 = func_5(-_wgslsmith_dot_vec4_i32(vec4<i32>(-49075i, ~var_3.a.x, reverseBits(var_2), var_3.a.x >> (55753u % 32u)), ~vec4<i32>(var_1.a.x, var_1.a.x, var_2, 6244i)), !select(vec3<bool>(global2.x, var_1.a.x > 16362i, all(vec4<bool>(false, global2.x, global2.x, true))), !select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(global2.x, true, false), vec3<bool>(global2.x, global2.x, false)), true), Struct_1(vec3<i32>(0i, i32(-1i) * -8901i, var_1.a.x) >> (vec3<u32>(58986u, var_1.c.x, _wgslsmith_mod_u32(76387u, u_input.a)) % vec3<u32>(32u)), var_1.d.x, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_3.c.x, 0u, 1u) ^ vec4<u32>(18420u, 4294967295u, 4294967295u, var_3.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(3308u, var_3.c.x, var_3.c.x, var_1.c.x), vec4<u32>(var_3.c.x, 4612u, 0u, 96817u))), var_1.c.x, _wgslsmith_div_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1249f, 253f, 460f), vec3<f32>(var_1.d.x, var_1.b, -1601f), global2.x))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_3.d.xy))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_7.d.x, 949f)), var_3.c.x << (max(reverseBits(1u) | max(var_1.c.x, var_7.c.x), func_2(~var_1.a)) % 32u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1096f, -661f, 1172f, 905f)) * vec4<f32>(373f, var_6.x, -592f, 655f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_6(false, Struct_1(var_7.a << (vec3<u32>(var_7.c.x, var_7.c.x, 0u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-global3.x), abs(vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_div_vec3_f32(var_7.d, var_1.d)), Struct_1(vec3<i32>(1i, var_7.a.x, -5543i), _wgslsmith_f_op_f32(1034f + global3.x), vec3<u32>(var_7.c.x, 3308u, u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_7.b, -412f, var_1.b) + var_3.d))))));
}

