struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 20> = array<vec2<f32>, 20>(vec2<f32>(281f, 1000f), vec2<f32>(-1104f, -1000f), vec2<f32>(-920f, -123f), vec2<f32>(1262f, 124f), vec2<f32>(-1000f, -646f), vec2<f32>(1000f, -436f), vec2<f32>(-392f, 285f), vec2<f32>(2822f, 405f), vec2<f32>(-560f, -325f), vec2<f32>(2586f, 1814f), vec2<f32>(781f, -1256f), vec2<f32>(917f, 1894f), vec2<f32>(1720f, -1000f), vec2<f32>(-300f, -1000f), vec2<f32>(-1665f, 166f), vec2<f32>(1149f, -544f), vec2<f32>(-976f, 1267f), vec2<f32>(2268f, -267f), vec2<f32>(-1738f, -1011f), vec2<f32>(-1424f, 561f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global2: array<i32, 29> = array<i32, 29>(-1i, 2147483647i, 50140i, 0i, -4803i, 1i, 14866i, 26879i, 19334i, -39313i, 2147483647i, 2147483647i, -12055i, 2147483647i, -1i, 28440i, 21435i, 9024i, -19873i, 19773i, 2147483647i, 1i, 0i, -28845i, -40031i, 0i, 0i, 12359i, 0i);

var<private> global3: array<bool, 13> = array<bool, 13>(false, true, true, true, false, false, false, true, true, true, true, false, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = _wgslsmith_f_op_f32(ceil(872f));
    global0 = array<vec2<f32>, 20>();
    var var_2 = ~countOneBits(u_input.b) & _wgslsmith_sub_u32(abs(~countOneBits(0u)), 47308u);
    global3 = array<bool, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(max(-1i, u_input.d), firstTrailingBit(1i), _wgslsmith_add_i32(global2[_wgslsmith_index_u32(1u, 29u)], 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(9395u, 29u)], u_input.d, 0i), vec4<i32>(global2[_wgslsmith_index_u32(0u, 29u)], u_input.d, global2[_wgslsmith_index_u32(56514u, 29u)], u_input.c))), ~(-vec4<i32>(0i, global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.c, -2147483647i))), 1i, 0i), ~vec2<u32>(var_0, 0u), countOneBits(~vec3<i32>(-15898i, reverseBits(u_input.d), -1i << (var_0 % 32u))), _wgslsmith_f_op_f32(479f + 737f), _wgslsmith_f_op_f32(trunc(var_1)));
}

