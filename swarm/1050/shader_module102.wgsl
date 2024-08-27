struct Struct_1 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(220f, 1352f, 198f));

var<private> global1: vec2<u32>;

var<private> global2: vec4<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = ~(-firstLeadingBit(-u_input.a.zy)) | u_input.e.yz;
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(trunc(727f)), global0.a.x, global0.a.x))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.a));
    var var_3 = abs(firstTrailingBit(~(~(-20381i)) | _wgslsmith_dot_vec4_i32(~u_input.e, u_input.e)));
    var_0 = global2.xy;
    return _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global2.wxz, vec3<i32>(u_input.a.x, ~firstTrailingBit(43438i), global2.x)), vec3<i32>(-12640i, _wgslsmith_add_i32(-_wgslsmith_div_i32(-475i, global2.x), -4678i), 2147483647i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.x), _wgslsmith_f_op_f32(max(global0.a.x, -1014f)), -367f) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1932f, -285f, global0.a.x)) * global0.a)));
    let var_1 = !vec2<bool>(any(arg_1), true);
    let var_2 = u_input.a.x;
    let var_3 = (vec3<i32>(abs(~u_input.a.x), firstTrailingBit(-65565i), func_3(arg_0)) >> (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, u_input.c, u_input.c, 4294967295u), vec4<u32>(global1.x, global1.x, u_input.b, global1.x) ^ vec4<u32>(4294967295u, u_input.b, u_input.b, 1u)), abs(global1.x), _wgslsmith_add_u32(0u, ~0u)) % vec3<u32>(32u))) << (_wgslsmith_clamp_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, 40242u, u_input.c) | vec3<u32>(global1.x, 0u, 91399u)) << (vec3<u32>(_wgslsmith_div_u32(global1.x, u_input.b), ~1u, ~u_input.b) % vec3<u32>(32u)), vec3<u32>(reverseBits(_wgslsmith_div_u32(22994u, 1u)), 4294967295u, global1.x), ~_wgslsmith_mod_vec3_u32(~vec3<u32>(68137u, 92577u, 0u), ~vec3<u32>(global1.x, global1.x, 11340u))) % vec3<u32>(32u));
    var var_4 = var_2;
    return abs(19086i << (~global1.x % 32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32) -> Struct_1 {
    global2 = vec4<i32>(-94989i, _wgslsmith_add_i32(func_2(Struct_1(global0.a), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), global2.x), 1i, u_input.a.x);
    var var_0 = ~(-2147483647i);
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global0.a, vec3<f32>(global0.a.x, 1007f, -2274f), false)), _wgslsmith_f_op_vec3_f32(-global0.a))))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a + vec3<f32>(877f, global0.a.x, global0.a.x)) + _wgslsmith_f_op_vec3_f32(step(global0.a, vec3<f32>(1000f, -1669f, 1398f))))))));
    let var_2 = var_1;
    let var_3 = Struct_1(vec3<f32>(1f, 1f, 1f));
    return var_3;
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1501f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.x * -518f) + global0.a.x)))));
    let var_1 = arg_2;
    var var_2 = vec2<i32>(_wgslsmith_dot_vec2_i32(global2.zz, global2.xw), abs(-(~u_input.d)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x));
    var_0 = global0.a.x;
    return func_1(firstLeadingBit(max(vec3<u32>(u_input.c, 0u, global1.x), vec3<u32>(u_input.c, global1.x, u_input.c)) & abs(vec3<u32>(41703u, global1.x, 4294967295u))) ^ vec3<u32>(firstLeadingBit(~77972u), 1u, arg_1), var_2.x);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = func_1(~(vec3<u32>(1u, 1u, ~1u) << (abs(vec3<u32>(18026u, u_input.b, u_input.b)) % vec3<u32>(32u))), func_2(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-240f, arg_0.a.x, arg_1.a.x), _wgslsmith_f_op_vec3_f32(global0.a * vec3<f32>(arg_0.a.x, global0.a.x, arg_0.a.x)))), vec4<bool>(!any(vec2<bool>(arg_2, arg_2)), !(-430f >= arg_0.a.x), !arg_2 | !arg_2, true)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(1000f * 1096f))))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -605f);
    global2 = ~vec4<i32>(~(-1i) >> ((4294967295u ^ firstLeadingBit(global1.x)) % 32u), ~reverseBits(max(1i, u_input.a.x)), i32(-1i) * -9760i, u_input.a.x);
    let var_2 = _wgslsmith_f_op_f32(floor(-1027f));
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1000f))));
    var var_1 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.x, -1595f, _wgslsmith_f_op_f32(floor(-1000f)))), vec3<f32>(-1000f, global0.a.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x))))), !(!arg_2.zzx))), u_input.c, arg_3, arg_3);
    let var_2 = func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-func_4(_wgslsmith_f_op_vec3_f32(-arg_3.a), 73792u, Struct_1(vec3<f32>(arg_1.x, 811f, 396f)), arg_3).a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(308f, arg_1.x, -676f), global0.a) - vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), -190f, 172f))), _wgslsmith_div_u32(max(firstLeadingBit(~global1.x), _wgslsmith_sub_u32(1u, u_input.b)), 95312u), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.x, 531f, global0.a.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.yxz, vec3<f32>(arg_1.x, 1051f, arg_3.a.x)) * arg_1.wyw)), abs(~(~33069u)), arg_3, func_5(Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(605f, var_1.a.x, 167f))), func_5(func_4(vec3<f32>(arg_1.x, global0.a.x, arg_3.a.x), u_input.c, Struct_1(vec3<f32>(-952f, arg_1.x, -290f)), arg_3), Struct_1(arg_1.zzy), !arg_2.x), arg_2.x)), func_1(~vec3<u32>(4294967295u, global1.x, global1.x) | _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), _wgslsmith_mult_vec3_u32(vec3<u32>(14155u, global1.x, global1.x), vec3<u32>(global1.x, 8574u, u_input.c))), 1i));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(select(-254f, arg_3.a.x, true)), _wgslsmith_f_op_f32(807f * var_2.a.x)), select(19656u, 1u, arg_2.x) << (~global1.x % 32u), func_5(Struct_1(vec3<f32>(arg_1.x, arg_3.a.x, var_2.a.x)), Struct_1(vec3<f32>(1444f, -1000f, -280f)), any(vec2<bool>(false, true))), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, var_2.a.x, var_1.a.x)))).a.x + 131f));
    var var_3 = 4294967295u | abs(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(55028u, 80118u), ~vec2<u32>(global1.x, 44820u))));
    return func_1(firstLeadingBit(~select(vec3<u32>(u_input.c, 0u, u_input.b), vec3<u32>(u_input.c, 1u, 3159u), vec3<bool>(true, true, true))) >> (~vec3<u32>(~68667u, ~0u, ~15692u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0, _wgslsmith_add_i32(arg_0, arg_0)), arg_0, -2147483647i), vec3<i32>(_wgslsmith_div_i32(-1567i, global2.x), (-1i >> (u_input.c % 32u)) & _wgslsmith_dot_vec2_i32(vec2<i32>(-33277i, arg_0), global2.ww), ~(-7802i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, reverseBits(~global1.x), abs(u_input.c)), _wgslsmith_add_vec3_u32(~vec3<u32>(abs(17790u), ~u_input.b, reverseBits(14189u)), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 1u, global1.x), vec3<u32>(u_input.c, 26976u, 4294967295u)) ^ vec3<u32>(0u, 1u, 27651u))));
    let var_1 = func_6(~max(u_input.e.x, abs(u_input.a.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1122f, global0.a.x, -1080f, 4430f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, 507f, global0.a.x, global0.a.x))))), vec4<bool>(_wgslsmith_mod_i32(-33483i, -13028i) == u_input.d, !any(vec3<bool>(true, true, true)), true, false), func_5(func_4(vec3<f32>(170f, _wgslsmith_f_op_f32(f32(-1f) * -767f), global0.a.x), u_input.c, func_1(~vec3<u32>(var_0.x, 47537u, var_0.x), u_input.a.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1489f, global0.a.x, -907f)))), func_4(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, 105f, global0.a.x)))), u_input.b, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(global0.a))), func_4(global0.a, select(u_input.b, 4294967295u, true), func_4(vec3<f32>(-1474f, global0.a.x, global0.a.x), 1u, Struct_1(global0.a), Struct_1(global0.a)), func_1(vec3<u32>(var_0.x, 0u, u_input.c), -47572i))), true));
    global2 = u_input.e;
    let var_2 = vec2<bool>(all(vec2<bool>(true, true)) & true, false);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.a.x - global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(404f)), -988f) + _wgslsmith_f_op_f32(round(global0.a.x))), _wgslsmith_f_op_f32(-1000f - global0.a.x), _wgslsmith_f_op_f32(1062f + 733f)));
    var_0 = vec3<u32>(_wgslsmith_mod_u32(~global1.x, ~global1.x), ~4294967295u, 35063u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x - -1050f), var_1.a.x, global0.a.x, -415f), 114831u, u_input.a.zx, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1009f), _wgslsmith_f_op_f32(-1327f + -2356f))))));
}

