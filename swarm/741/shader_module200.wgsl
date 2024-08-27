struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 16025i;

var<private> global1: array<Struct_2, 9>;

var<private> global2: array<bool, 18>;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec2<u32>(1u, 1u), true, vec4<f32>(1000f, -762f, -276f, 526f), Struct_1(false, 29551i, -8866i, vec2<bool>(true, false))));

var<private> global4: array<bool, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> bool {
    let var_0 = ~vec2<i32>(reverseBits(7702i), _wgslsmith_div_i32(_wgslsmith_mult_i32(countOneBits(36008i), u_input.a.x), firstLeadingBit(-8830i)));
    let var_1 = 1107f;
    var var_2 = global3[_wgslsmith_index_u32(arg_2.a.x << (arg_0.x % 32u), 1u)];
    global2 = array<bool, 18>();
    let var_3 = -386f;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(185f)), -969f)) < _wgslsmith_f_op_f32(step(var_2.c.x, _wgslsmith_div_f32(550f, 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 1>();
    let var_0 = Struct_2(~(u_input.b.yz << (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) & ~(~u_input.b.ww), global4[_wgslsmith_index_u32(5666u, 9u)], vec4<f32>(380f, _wgslsmith_div_f32(532f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -756f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(837f, -871f)) * _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1402f, -592f), _wgslsmith_div_f32(-459f, 1133f)))), 1176f), Struct_1(func_1(u_input.b.ywy, _wgslsmith_f_op_f32(max(-588f, _wgslsmith_div_f32(-1763f, -601f))), Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.c), u_input.b.xx), global2[_wgslsmith_index_u32(u_input.b.x, 18u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-529f, -1908f, 740f, -342f) + vec4<f32>(595f, 3773f, 595f, -368f)), Struct_1(false, u_input.a.x, 13428i, vec2<bool>(false, false)))), -u_input.a.x, -1i, vec2<bool>(false, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(select(-firstTrailingBit(u_input.a), u_input.a, any(!vec4<bool>(global2[_wgslsmith_index_u32(var_0.a.x, 18u)], global4[_wgslsmith_index_u32(94243u, 9u)], global4[_wgslsmith_index_u32(0u, 9u)], global4[_wgslsmith_index_u32(13025u, 9u)]))), (_wgslsmith_mult_vec2_i32(u_input.a, u_input.a) >> (~vec2<u32>(u_input.c, var_0.a.x) % vec2<u32>(32u))) >> (abs(_wgslsmith_mult_vec2_u32(var_0.a, u_input.b.yy)) % vec2<u32>(32u))), ~u_input.b, var_0.d.c, var_0.c.x, vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_sub_i32(48609i, var_0.d.b), _wgslsmith_div_i32(0i, u_input.a.x)));
}

