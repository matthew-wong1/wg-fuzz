struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: i32 = -1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: f32) -> i32 {
    global0 = array<Struct_2, 19>();
    let var_0 = _wgslsmith_div_f32(1522f, 130f);
    global0 = array<Struct_2, 19>();
    global0 = array<Struct_2, 19>();
    var var_1 = vec3<f32>(1356f, _wgslsmith_f_op_f32(floor(-513f)), var_0);
    return ~(~(~u_input.b.x)) << (u_input.a.x % 32u);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = !(!(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_0.b.d, arg_1.d), vec3<bool>(arg_0.d.a.d, arg_1.d, arg_1.d)), vec3<bool>(arg_0.d.b.d, true, arg_1.d), select(vec3<bool>(arg_1.d, true, arg_0.d.a.d), vec3<bool>(arg_0.d.a.d, true, arg_0.b.d), vec3<bool>(false, true, false)))));
    global1 = -112046i;
    let var_1 = vec4<i32>(2147483647i << (0u % 32u), 18854i, _wgslsmith_div_i32(-1i, 1i), 1269i);
    return abs(~arg_0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u;
    global0 = array<Struct_2, 19>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_i32(max(vec2<i32>(~6452i, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), (u_input.b.xx >> (u_input.a.ww % vec2<u32>(32u))) >> (u_input.a.yz % vec2<u32>(32u))), (-u_input.b.zz | vec2<i32>(u_input.b.x, -2147483647i)) | vec2<i32>(u_input.b.x, select(u_input.b.x, u_input.b.x, false)), u_input.b.yz), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), -(vec4<i32>(-1i) * -vec4<i32>(1i, u_input.b.x, u_input.b.x, 2147483647i)), !(firstTrailingBit(func_2(Struct_3(var_0, Struct_1(u_input.b.xx, u_input.b.x, vec4<i32>(-1i, u_input.b.x, 2147483647i, -50584i), false), u_input.a, global0[_wgslsmith_index_u32(78318u, 19u)]), Struct_1(u_input.b.xy, u_input.b.x, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), true), u_input.b.x)) != _wgslsmith_mult_u32(35221u, 59775u)));
    let var_2 = reverseBits(u_input.b) << (vec3<u32>(20343u, 4294967295u, 44778u) % vec3<u32>(32u));
    let var_3 = Struct_1(vec2<i32>(-2147483647i, i32(-1i) * -(~u_input.b.x)), var_1.a.x << (_wgslsmith_div_u32(u_input.a.x, 0u) % 32u), var_1.c, false);
    global1 = var_1.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

