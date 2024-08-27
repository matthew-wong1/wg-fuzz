struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(32278u, 63629u, 108022u), vec3<u32>(67047u, 4294967295u, 0u), vec3<u32>(1u, 21403u, 18189u), vec3<u32>(11156u, 40962u, 13129u), vec3<u32>(1u, 0u, 1u), vec3<u32>(8555u, 12276u, 1u), vec3<u32>(43253u, 1u, 28004u), vec3<u32>(1u, 4294967295u, 87996u), vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(28423u, 16131u, 1u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<u32>, 11>();
    let var_0 = 6363u;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1625f, 626f) - 1f)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-717f, 1968f)), 1f);
    var var_2 = ~52999u;
    let var_3 = Struct_1(~(~arg_0), var_0);
    return Struct_1(select(~(~vec3<i32>(var_3.a.x, 40211i, -41188i)), select(_wgslsmith_sub_vec3_i32(vec3<i32>(var_3.a.x, var_3.a.x, 1i), arg_0), ~vec3<i32>(var_3.a.x, arg_0.x, -4567i) & (var_3.a << (vec3<u32>(u_input.b.x, var_0, 4294967295u) % vec3<u32>(32u))), select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), true)), true), ~38670u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 11>();
    var var_0 = func_1(abs(~(~select(u_input.c.zzx, vec3<i32>(-2147483647i, 9413i, -1i), vec3<bool>(true, true, true)))));
    var_0 = Struct_1(firstLeadingBit(vec3<i32>(min(var_0.a.x, u_input.d), (var_0.a.x | -8986i) << (~var_0.b % 32u), var_0.a.x)), var_0.b);
    var_0 = func_1(var_0.a);
    var var_1 = -2742f;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.b.x, var_0.b, u_input.b.x, 11260u) & vec4<u32>(var_0.b, 14494u, var_0.b, 0u)), vec4<u32>(~u_input.b.x, 27911u << (var_0.b % 32u), u_input.b.x, ~53560u)));
}

