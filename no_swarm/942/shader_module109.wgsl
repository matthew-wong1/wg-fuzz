struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23>;

var<private> global1: vec3<f32> = vec3<f32>(994f, 1440f, 581f);

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> i32 {
    let var_0 = ~(select(~vec2<u32>(u_input.b, u_input.b), ~(vec2<u32>(25558u, u_input.b) & vec2<u32>(u_input.b, u_input.b)), true && global2.x) << (firstLeadingBit(vec2<u32>(~46252u, select(15828u, u_input.b, global2.x))) % vec2<u32>(32u)));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-492f, arg_1.a.x)))) + _wgslsmith_f_op_f32(arg_0.x - -1398f))));
    let var_2 = arg_1.d;
    var var_3 = arg_1;
    var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1563f * global1.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(arg_0.x, 700f, arg_1.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -2151f))))), vec2<bool>(true, true), _wgslsmith_div_vec2_i32(~var_3.c, u_input.c), var_2);
    return _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, ~(3447i >> (var_0.x % 32u)), u_input.a << (u_input.b % 32u)) | -(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, var_3.c.x), vec3<i32>(var_3.c.x, var_3.c.x, var_3.c.x))), abs(-_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 48063i, arg_1.c.x), vec3<i32>(u_input.c.x, var_3.c.x, arg_1.c.x))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<bool>(arg_1.b.x, ~firstLeadingBit(u_input.b) > ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(4666u, u_input.b, u_input.b), 34133u));
    let var_1 = abs(reverseBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 1i, -48114i, arg_1.c.x), vec4<i32>(u_input.a, -13616i, 19078i, 14316i)), -vec4<i32>(0i, arg_1.c.x, u_input.c.x, -59803i))));
    let var_2 = Struct_1(_wgslsmith_div_vec3_f32(arg_1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-801f, 842f, 698f) + vec3<f32>(1057f, arg_1.a.x, global1.x)) + arg_1.a), arg_1.a)), global2.yy, var_1.zx, select(vec4<bool>(arg_1.d.x, select(all(vec2<bool>(false, var_0.x)), false, false && global2.x), global2.x, any(!vec3<bool>(false, global2.x, false))), select(select(vec4<bool>(arg_1.d.x, arg_1.b.x, false, global2.x), !vec4<bool>(arg_1.b.x, var_0.x, false, false), select(vec4<bool>(var_0.x, arg_1.b.x, false, true), arg_1.d, arg_1.b.x)), arg_1.d, arg_1.d), !select(vec4<bool>(arg_1.d.x, false, true, true), !vec4<bool>(var_0.x, arg_1.d.x, global2.x, false), arg_1.d)));
    var var_3 = var_2;
    var var_4 = -(~func_3(global1.yy, Struct_1(var_2.a, vec2<bool>(false, var_2.d.x), vec2<i32>(-2147483647i, arg_0.x), vec4<bool>(false, var_3.b.x, true, var_3.d.x))));
    return var_2;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> vec3<bool> {
    let var_0 = arg_1;
    let var_1 = -var_0.c;
    var var_2 = -(-_wgslsmith_div_vec3_i32(countOneBits(vec3<i32>(0i, arg_1.c.x, var_0.c.x)), vec3<i32>(u_input.a, -2147483647i, 2147483647i)) & vec3<i32>(-(~u_input.a), abs(~0i), 0i));
    let var_3 = arg_1;
    return vec3<bool>(false, var_3.d.x, true);
}

fn func_5(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = func_2(~(~_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a, -1i, 3501i, 49866i), ~vec4<i32>(15802i, 1i, u_input.c.x, u_input.c.x))), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), -1231f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1262f)) * _wgslsmith_f_op_f32(-global1.x))), global2.yx, max(vec2<i32>(~u_input.c.x, u_input.c.x), -_wgslsmith_mod_vec2_i32(u_input.c, vec2<i32>(23800i, u_input.a))), !func_2(select(vec4<i32>(u_input.c.x, u_input.a, u_input.a, u_input.a), vec4<i32>(5766i, u_input.c.x, u_input.c.x, u_input.c.x), arg_0.x), Struct_1(vec3<f32>(global1.x, global1.x, global1.x), arg_0.xz, vec2<i32>(u_input.a, 0i), vec4<bool>(global2.x, true, true, false))).d));
    let var_1 = var_0.a;
    let var_2 = func_2(_wgslsmith_sub_vec4_i32(reverseBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(15506i, u_input.c.x, 6190i, u_input.a), vec4<i32>(-2147483647i, -2147483647i, -40883i, u_input.a), vec4<i32>(u_input.c.x, u_input.c.x, 6333i, 1i)) << (~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b) % vec4<u32>(32u))), vec4<i32>(4908i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.c.x), -vec2<i32>(0i, 1i)), 30057i, -2147483647i)), Struct_1(var_0.a, func_2(vec4<i32>(func_2(vec4<i32>(u_input.c.x, 1i, u_input.c.x, 38303i), Struct_1(var_0.a, vec2<bool>(arg_0.x, true), vec2<i32>(-34377i, 2147483647i), var_0.d)).c.x, -2147483647i, -8127i, ~u_input.c.x), func_2(firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, 1i, u_input.a)), func_2(vec4<i32>(-45943i, 1i, var_0.c.x, 0i), Struct_1(var_0.a, vec2<bool>(global2.x, arg_0.x), u_input.c, var_0.d)))).d.xy, ~vec2<i32>(~var_0.c.x, 0i), !func_2(vec4<i32>(u_input.c.x, -2147483647i, 1i, var_0.c.x) & vec4<i32>(-2475i, u_input.c.x, 17840i, 0i), Struct_1(var_0.a, vec2<bool>(false, arg_0.x), vec2<i32>(var_0.c.x, -65110i), var_0.d)).d));
    var var_3 = global2.x;
    global2 = var_0.d.zzz;
    return Struct_1(var_2.a, !vec2<bool>(false, global2.x), vec2<i32>(1i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.c.x, var_2.c.x, var_0.c.x), vec3<i32>(u_input.c.x, var_0.c.x, var_0.c.x), !vec3<bool>(var_2.b.x, var_0.b.x, false)), vec3<i32>(var_2.c.x, -1i, ~var_2.c.x))), var_0.d);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = all(global0[_wgslsmith_index_u32(0u, 23u)]);
    let var_2 = -(~1i) << (u_input.b % 32u);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_4 = false;
    return func_5(select(select(global0[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b), var_0.b.x), 23u)], select(!vec3<bool>(true, false, var_0.b.x), !vec3<bool>(var_0.d.x, true, false), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(12422u, 4294967295u), 23u)]), func_4(_wgslsmith_div_f32(global1.x, -208f), func_2(vec4<i32>(var_2, var_2, arg_1.c.x, 78734i), Struct_1(var_0.a, global2.xz, vec2<i32>(-49249i, 2147483647i), vec4<bool>(true, true, false, global2.x))), -1125f, _wgslsmith_div_i32(-46714i, u_input.a))), var_0.d.xwz, func_2(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, arg_1.c.x, -1i, arg_1.c.x), vec4<i32>(arg_1.c.x, -61269i, u_input.a, u_input.c.x)), func_2(abs(vec4<i32>(arg_1.c.x, u_input.a, 1i, 24933i)), Struct_1(arg_1.a, arg_1.b, var_0.c, vec4<bool>(false, false, var_0.d.x, arg_1.d.x)))).d.xzw));
}

fn func_6(arg_0: Struct_1, arg_1: f32) -> vec4<i32> {
    let var_0 = 1u;
    var var_1 = ~u_input.b;
    var var_2 = firstLeadingBit(~(-32633i));
    var var_3 = ~(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_0), ~vec2<u32>(47453u, 722u), _wgslsmith_mod_vec2_u32(vec2<u32>(21329u, 12800u), vec2<u32>(var_0, 42685u))) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(4294967295u, 4294967295u)) % vec2<u32>(32u))) & vec2<u32>(34956u, ~(~0u));
    global2 = vec3<bool>(any(select(!func_4(global1.x, Struct_1(vec3<f32>(333f, -1855f, arg_1), vec2<bool>(true, true), vec2<i32>(1i, arg_0.c.x), arg_0.d), global1.x, 2147483647i).yx, !arg_0.b, select(global2.zz, vec2<bool>(global2.x, global2.x), func_5(arg_0.d.zxz).b))), true, func_5(vec3<bool>(true, false, true)).d.x);
    return max(abs(vec4<i32>(-1i, arg_0.c.x, -26498i, -39213i)) & (vec4<i32>(-1i) * -vec4<i32>(arg_0.c.x, -6743i, 1i, -9860i)), countOneBits(vec4<i32>(0i, func_5(arg_0.d.zyz).c.x, 1i, -46955i))) << ((~(~min(vec4<u32>(11784u, 0u, 38027u, 0u), vec4<u32>(42050u, 64851u, 89077u, 30737u))) >> (max(min(vec4<u32>(8719u, 44998u, var_3.x, var_0), vec4<u32>(var_0, 60434u, u_input.b, var_0)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, var_0, 1u, 0u), abs(vec4<u32>(var_0, 1u, 47723u, 1u)))) % vec4<u32>(32u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(!(!(!vec3<bool>(false, global2.x, global2.x))), global0[_wgslsmith_index_u32(u_input.b, 23u)], global2.x);
    let var_0 = vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, -33772i, u_input.c.x), select(vec3<i32>(2147483647i, u_input.c.x, 2147483647i), vec3<i32>(1i, u_input.a, 57568i) >> (vec3<u32>(u_input.b, u_input.b, 120605u) % vec3<u32>(32u)), true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -132f, _wgslsmith_f_op_f32(min(global1.x, 530f)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.x, 1336f, global1.x))))), global2.xx, var_0.zy, !vec4<bool>(all(!global2.yz), false, global2.x, false));
    let var_2 = !vec4<bool>(true, !all(vec4<bool>(true, true, true, true)), var_1.d.x, !(!var_1.b.x || global2.x));
    let var_3 = var_2.zx;
    global1 = var_1.a;
    global1 = vec3<f32>(781f, -1574f, -272f);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x | var_1.c.x, _wgslsmith_sub_i32(48115i, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, -2147483647i), var_0.xy), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.c.x, var_1.c.x, u_input.a), vec4<i32>(0i, 31316i, u_input.a, u_input.a))), func_6(func_1(global1.x, Struct_1(vec3<f32>(294f, 1264f, var_1.a.x), vec2<bool>(var_3.x, true), u_input.c, vec4<bool>(false, false, false, global2.x))), -968f), ~vec4<i32>(-1i, 1i, var_1.c.x, -2147483647i)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(max(var_1.c.x, u_input.a), -2147483647i), _wgslsmith_mult_i32(u_input.a << (11641u % 32u), 1i), _wgslsmith_dot_vec2_i32(-vec2<i32>(6299i, 39194i), u_input.c | var_1.c)), ~(~vec3<i32>(-3729i, -2147483647i, -3426i))), u_input.b);
}

