struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(-432f, 2455f, -950f, 404f, -298f, -1160f, 878f, 1694f, -596f, 1024f, -940f, 1020f, 326f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32) -> u32 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~10369u, 13u)]), all(select(!vec2<bool>(false, arg_0.a.x), !arg_0.a, select(arg_0.a, arg_0.a, select(arg_0.a, arg_0.a, true)))));
    global0 = array<f32, 13>();
    let var_2 = arg_0;
    global0 = array<f32, 13>();
    return 75934u;
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -228f), global0[_wgslsmith_index_u32((u_input.a | firstLeadingBit(0u)) & 0u, 13u)]), select(firstTrailingBit(1i) > ((i32(-1i) * -7728i) & u_input.e), false && any(vec3<bool>(true, true, true)), true));
    var var_1 = vec2<u32>(_wgslsmith_div_u32(u_input.a, u_input.d ^ 1u), ~firstTrailingBit(4294967295u));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1561f))), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(var_1.x, 1u), 13u)])))), any(select(select(!vec3<bool>(var_0.b, false, false), vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, false, var_0.b)), select(select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, false), false), select(vec3<bool>(false, var_0.b, true), vec3<bool>(false, var_0.b, var_0.b), vec3<bool>(var_0.b, var_0.b, true)), !vec3<bool>(var_0.b, true, var_0.b)), all(vec2<bool>(false, var_0.b)))));
    let var_3 = Struct_1(-1416f, any(!vec3<bool>(any(vec4<bool>(true, var_2.b, false, var_0.b)), var_0.b, any(vec4<bool>(false, true, var_0.b, false)))));
    var_0 = var_3;
    return !select(vec4<bool>(all(vec2<bool>(false, false)) || true, var_2.b, -1i <= (23798i >> (u_input.d % 32u)), !(-2147483647i < u_input.c)), vec4<bool>(all(vec2<bool>(true, var_3.b)) & all(vec2<bool>(var_0.b, true)), all(!vec3<bool>(var_0.b, false, var_2.b)), all(vec2<bool>(var_2.b, true)), var_1.x <= _wgslsmith_clamp_u32(var_1.x, 0u, 1u)), !select(!vec4<bool>(false, var_3.b, false, false), vec4<bool>(var_0.b, true, false, false), select(vec4<bool>(var_0.b, var_2.b, true, var_3.b), vec4<bool>(true, false, false, var_0.b), false)));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = -2147483647i;
    global0 = array<f32, 13>();
    var var_1 = Struct_2(vec2<bool>(true, all(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, false))), ~(~38730u ^ _wgslsmith_clamp_u32(arg_0.x, arg_0.x, 0u)) >> (~(~arg_0.x << (func_1(Struct_2(vec2<bool>(false, false), arg_0.x, global0[_wgslsmith_index_u32(60171u, 13u)]), u_input.b, -488f) % 32u)) % 32u), 752f);
    let var_2 = -u_input.b;
    var_0 = select(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(-arg_2.ww, arg_2.zx), -8834i), ~(-(~(-26481i)) >> (1u % 32u)), all(func_3()));
    return _wgslsmith_sub_u32(_wgslsmith_div_u32(0u, ~21038u), u_input.d);
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_div_u32(arg_1.x, ~(~abs(4294967295u))) >> (1u % 32u);
    var var_1 = vec2<bool>(true, true);
    global0 = array<f32, 13>();
    global0 = array<f32, 13>();
    var var_2 = Struct_2(select(vec2<bool>(var_1.x, all(select(vec2<bool>(false, var_1.x), vec2<bool>(false, var_1.x), vec2<bool>(true, var_1.x)))), vec2<bool>(true, !(!var_1.x)), select(vec2<bool>(all(vec4<bool>(false, var_1.x, var_1.x, true)), var_1.x & true), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, true), true), !(-2482f < global0[_wgslsmith_index_u32(arg_2.x, 13u)]))), ((var_0 >> ((var_0 | arg_2.x) % 32u)) >> (var_0 % 32u)) << ((~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 75110u, var_0, u_input.a), vec4<u32>(2810u, 66397u, u_input.d, u_input.a)) & ~1u) % 32u), 1f);
    return u_input.a;
}

fn func_5(arg_0: u32) -> Struct_1 {
    var var_0 = Struct_1(-1507f, false);
    var_0 = Struct_1(_wgslsmith_f_op_f32(min(1015f, _wgslsmith_div_f32(-303f, global0[_wgslsmith_index_u32(33419u, 13u)]))), all(!vec2<bool>(var_0.b || var_0.b, var_0.b)));
    let var_1 = -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(2751i, u_input.b.x)), u_input.b.xw);
    var var_2 = Struct_2(func_3().yx, arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.a))));
    var var_3 = var_0.a;
    return Struct_1(global0[_wgslsmith_index_u32(~var_2.b, 13u)], !all(vec2<bool>(true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(u_input.e ^ -u_input.e, vec3<u32>(_wgslsmith_add_u32(~u_input.a, 0u), u_input.d, 41670u), vec3<u32>(4294967295u, _wgslsmith_add_u32(func_1(Struct_2(vec2<bool>(false, true), u_input.a, global0[_wgslsmith_index_u32(18437u, 13u)]), vec4<i32>(37204i, u_input.b.x, u_input.b.x, -2147483647i), -2204f), u_input.d), func_2(vec3<u32>(u_input.d, 4294967295u, 43940u), max(u_input.e, u_input.c), u_input.b))));
    var var_1 = func_5(countOneBits(u_input.a));
    global0 = array<f32, 13>();
    let var_2 = func_5(abs(0u));
    var_0 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -631f))), !(!(true & (u_input.d > u_input.a))));
    let var_3 = _wgslsmith_f_op_f32(-var_2.a);
    var var_4 = vec2<bool>(select(true, true, var_0.b), func_5(~(~(~40456u))).b);
    var_0 = func_5(u_input.a >> (_wgslsmith_mod_u32(~(u_input.d ^ 1958u), ~max(u_input.d, u_input.d)) % 32u));
    var_1 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.zw);
}

