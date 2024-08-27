struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 9>;

var<private> global2: u32 = 102638u;

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-32202i, 2147483647i), vec2<i32>(31208i, i32(-2147483648)), vec2<i32>(1i, 108550i), vec2<i32>(-7668i, -73411i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(12429i, -1i), vec2<i32>(63384i, -1i), vec2<i32>(-1i, 1i), vec2<i32>(-2893i, i32(-2147483648)), vec2<i32>(24755i, -5193i), vec2<i32>(39033i, -6141i), vec2<i32>(-33194i, -8770i), vec2<i32>(-4502i, -12726i), vec2<i32>(-39443i, 2147483647i), vec2<i32>(0i, -32510i), vec2<i32>(0i, 41205i), vec2<i32>(3620i, 5655i), vec2<i32>(5603i, 1202i), vec2<i32>(20768i, -2933i), vec2<i32>(-48316i, -1i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, 3914i), vec2<i32>(-31635i, 7735i), vec2<i32>(-33053i, 2147483647i), vec2<i32>(-10052i, -20254i), vec2<i32>(1i, 33767i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 0i), vec2<i32>(9867i, 3357i), vec2<i32>(31050i, 24157i));

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = firstLeadingBit(~vec3<u32>(~u_input.b, u_input.b, 25784u >> (u_input.d.x % 32u))) | ((abs(vec3<u32>(u_input.b, 4294967295u, 70532u)) << (vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(30902u, u_input.d.x, u_input.b, u_input.d.x), vec4<u32>(51306u, u_input.d.x, 0u, u_input.b)), u_input.d.x, 51477u) % vec3<u32>(32u))) >> ((~(~vec3<u32>(59040u, u_input.d.x, 1u)) | ~(~vec3<u32>(13869u, u_input.b, 0u))) % vec3<u32>(32u)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(step(1f, -1577f)), -744f);
    global1 = array<Struct_1, 9>();
    global2 = var_0.x & var_0.x;
    global1 = array<Struct_1, 9>();
    return select(firstTrailingBit(var_0.yz), ~firstTrailingBit(var_0.zy), !((var_0.x ^ 35437u) != (106049u >> (u_input.b % 32u)))) & ~vec2<u32>(u_input.d.x, 4294967295u);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 9>();
    global0 = select(1i, _wgslsmith_div_i32(0i, -u_input.c), all(vec3<bool>(select(false, true, all(vec2<bool>(false, false))), any(vec2<bool>(true, true)), true)));
    let var_0 = Struct_1(func_3(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 16910i > u_input.c)), _wgslsmith_div_i32(u_input.a, u_input.a), _wgslsmith_f_op_f32(f32(-1f) * -1000f), vec4<bool>(false, true, true, !(!(u_input.d.x > 21195u))));
    global0 = ~abs(abs(i32(-1i) * -2147483647i));
    let var_1 = ~u_input.b;
    return Struct_1(vec2<u32>(1182u, u_input.b), max(firstLeadingBit(-1375i), var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_0.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.c, -186f)), _wgslsmith_f_op_f32(-var_0.c)))))), !vec4<bool>(any(vec3<bool>(var_0.d.x, var_0.d.x, true)), !var_0.d.x, var_0.d.x, !(var_0.d.x || var_0.d.x)));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(arg_1.x, 9u)];
    let var_1 = 31188u;
    var var_2 = vec3<u32>((_wgslsmith_dot_vec3_u32(vec3<u32>(196u, var_1, 4294967295u), u_input.d ^ vec3<u32>(arg_1.x, 21246u, var_0.a.x)) | 1u) >> (~abs(arg_1.x << (var_1 % 32u)) % 32u), ~4294967295u, 37962u);
    var_0 = func_2();
    let var_3 = var_0.d.wwx;
    return vec2<u32>(u_input.d.x, ~4294967295u << (abs(~u_input.d.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(6760u, 9u)];
    global1 = array<Struct_1, 9>();
    var var_1 = -_wgslsmith_sub_vec2_i32(select(~global3[_wgslsmith_index_u32(abs(u_input.b), 32u)], abs(vec2<i32>(u_input.a, 7881i)), var_0.d.x), vec2<i32>(min(_wgslsmith_div_i32(0i, var_0.b), var_0.b), u_input.c));
    var var_2 = -global3[_wgslsmith_index_u32(~min(~(~1u), 4294967295u), 32u)];
    let var_3 = Struct_1(select(~vec2<u32>(4294967295u << (var_0.a.x % 32u), 4294967295u), _wgslsmith_div_vec2_u32(abs(_wgslsmith_div_vec2_u32(var_0.a, u_input.d.yx)), u_input.d.zx), select(all(var_0.d.xw), !var_0.d.x | !var_0.d.x, _wgslsmith_add_i32(var_1.x, 3857i) < (i32(-1i) * -50660i))), countOneBits(var_1.x), var_0.c, var_0.d);
    let var_4 = Struct_1(_wgslsmith_div_vec2_u32(abs(max(vec2<u32>(0u, 8747u), u_input.d.xz) | func_1(var_2.x, u_input.d, global3[_wgslsmith_index_u32(var_3.a.x, 32u)])), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, var_0.a.x), vec2<u32>(u_input.b, var_0.a.x)) >> (var_0.a % vec2<u32>(32u))), -(~abs(53639i << (var_3.a.x % 32u))), 1f, var_3.d);
    var var_5 = func_2();
    let var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-335f + 1670f) + 200f);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

