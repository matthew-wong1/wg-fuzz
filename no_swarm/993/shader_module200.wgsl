struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), 41866i, -1i, -33416i, 2520i, -1i, i32(-2147483648), 23280i);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<i32>(0i, -29147i), vec2<f32>(-909f, 835f), -1985f), Struct_1(vec2<i32>(i32(-2147483648), -31166i), vec2<f32>(1611f, 825f), -549f));

var<private> global2: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(38252u, 5788u, 47921u, 0u));

var<private> global3: array<Struct_1, 26>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    return select(countOneBits(_wgslsmith_dot_vec2_i32(~(-arg_0.yx), _wgslsmith_mod_vec2_i32(arg_0.yy, -arg_2.a.a))), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.x & (arg_1.x & u_input.e.x), _wgslsmith_div_u32(~40043u, 1u)), 8u)] ^ _wgslsmith_add_i32(2147483647i, _wgslsmith_add_i32(~global0[_wgslsmith_index_u32(17339u, 8u)], 13425i | global0[_wgslsmith_index_u32(126118u, 8u)])), !any(!select(vec3<bool>(arg_2.b, true, arg_2.b), vec3<bool>(false, false, arg_2.b), arg_2.b)));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_1) -> i32 {
    global3 = array<Struct_1, 26>();
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(countOneBits(countOneBits(-firstTrailingBit(global0[_wgslsmith_index_u32(0u, 8u)]))), abs(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x & u_input.d.x, u_input.a.x, 11095u, ~u_input.b.x), abs(global2[_wgslsmith_index_u32(1754u, 1u)] >> (global2[_wgslsmith_index_u32(u_input.a.x, 1u)] % vec4<u32>(32u)))), 8u)]), func_2(vec4<u32>(u_input.e.x, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e.x, u_input.e.x, 21548u), vec4<u32>(u_input.b.x, u_input.a.x, 0u, 11321u))), abs(countOneBits(u_input.d.x)), 15254u), func_1(max(max(vec3<i32>(0i, 5152i, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], 1i)), -vec3<i32>(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(u_input.b.x, 8u)], global0[_wgslsmith_index_u32(u_input.c.x, 8u)])), (vec2<u32>(48993u, u_input.c.x) >> (vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u))) >> (~vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)), Struct_2(global1[_wgslsmith_index_u32(~39433u, 2u)], true)), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], _wgslsmith_add_i32(global0[_wgslsmith_index_u32(31161u, 8u)], global0[_wgslsmith_index_u32(1350u, 8u)])), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-477f, 165f)))), -679f)));
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 26u)];
    let var_2 = Struct_2(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(14631u, u_input.a.x), 2u)], all(!select(vec2<bool>(false, true), vec2<bool>(true, true), any(vec4<bool>(true, true, false, true)))));
    global2 = array<vec4<u32>, 1>();
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(abs(func_2(vec4<u32>(0u, 1u, u_input.b.x, 4294967295u), -global0[_wgslsmith_index_u32(~218u, 8u)], var_2.a)), -(~_wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, var_0.x, var_0.x), vec3<i32>(var_1.a.x, var_1.a.x, -47833i))) & firstLeadingBit(vec3<i32>(2147483647i, var_1.a.x, -2147483647i)), _wgslsmith_add_i32(-_wgslsmith_add_i32(var_0.x, var_2.a.a.x << (u_input.a.x % 32u)), global0[_wgslsmith_index_u32(0u, 8u)]));
}

