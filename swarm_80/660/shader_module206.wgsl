struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(21508u, 22718u, 4294967295u, 4294967295u, 8140u, 80630u, 45164u, 0u, 1u, 4294967295u, 4294967295u, 0u, 4294967295u, 1u, 0u, 0u);

var<private> global1: array<vec4<i32>, 5>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_2(vec3<bool>(!arg_0.c, reverseBits(1i) != _wgslsmith_sub_i32(u_input.a.x << (global0[_wgslsmith_index_u32(0u, 16u)] % 32u), ~57324i), true), arg_0.b.x);
    var var_1 = !vec3<bool>(all(!select(vec2<bool>(true, true), arg_0.b, false)), false, select(any(vec2<bool>(arg_0.c, true)), true, arg_0.b.x && (u_input.a.x == 7207i)));
    global0 = array<u32, 16>();
    let var_2 = Struct_3(vec4<i32>(u_input.a.x, -1i, -u_input.a.x, ~u_input.a.x), Struct_2(var_0.a, all(arg_0.b)), all(vec2<bool>(any(vec4<bool>(var_0.b, true, false, false)), all(var_0.a.xx))));
    global0 = array<u32, 16>();
    return _wgslsmith_f_op_f32(sign(-1576f));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1086f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(573f + -357f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(794f - -144f)))) + 1514f);
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(Struct_1(vec2<f32>(1181f, -1234f), select(vec2<bool>(true, true), vec2<bool>(true, true), true), false)))));
    return Struct_2(!select(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, false), true & all(vec3<bool>(false, false, false))), true);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> bool {
    return all(arg_3.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool) -> u32 {
    var var_0 = arg_1 || true;
    global1 = array<vec4<i32>, 5>();
    let var_1 = Struct_2(vec3<bool>(true && all(select(vec2<bool>(arg_1, true), vec2<bool>(false, false), vec2<bool>(false, false))), false, !(!arg_1)), !arg_1);
    let var_2 = u_input.b;
    var_0 = !func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-854f, 2513f)))), _wgslsmith_f_op_f32(select(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.x))), select(select(false, var_1.a.x, var_1.a.x), arg_1, all(vec3<bool>(arg_1, false, var_1.a.x))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2());
    return _wgslsmith_mod_u32(u_input.b.x, abs(min(1u, ~38344u))) ^ ~firstLeadingBit(_wgslsmith_add_u32(0u, ~global0[_wgslsmith_index_u32(1u, 16u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1584f);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-629f + _wgslsmith_f_op_f32(ceil(-149f))), _wgslsmith_f_op_f32(f32(-1f) * -1075f))) - -294f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -1188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-570f))))))));
    var_0 = 144f;
    var var_1 = (0u << ((global0[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -282f, -334f, 223f) + vec4<f32>(-1000f, 1000f, 242f, -169f)), all(vec2<bool>(true, true))), 16u)] | ~20098u) % 32u)) == 1947u;
    var var_2 = vec4<i32>(-32592i & ~(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(u_input.b.x, 5u)]) | abs(2147483647i)), u_input.a.x, u_input.a.x, ~(~abs(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 36000i)))));
    let var_3 = global0[_wgslsmith_index_u32(~((u_input.b.x << (~(~0u) % 32u)) | ~global0[_wgslsmith_index_u32(select(~4294967295u, global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 16u)]), 16u)], false), 16u)]), 16u)];
    var var_4 = Struct_2(vec3<bool>(true, true, true), false);
    var var_5 = 0i;
    var var_6 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(-376f, -810f, select(vec3<u32>(~0u, ~35316u, 1u), max(reverseBits(u_input.b.xxy), u_input.b.yxx), any(vec4<bool>(true, true, true, true))) >> (firstTrailingBit(u_input.b.xxx) % vec3<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1332f));
}

