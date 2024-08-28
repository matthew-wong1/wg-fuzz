struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25>;

var<private> global1: vec2<u32>;

var<private> global2: array<vec4<i32>, 6>;

var<private> global3: array<vec4<i32>, 22> = array<vec4<i32>, 22>(vec4<i32>(1105i, 2147483647i, 58552i, 15552i), vec4<i32>(0i, 0i, -26383i, -1i), vec4<i32>(-63344i, 1i, -22440i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 0i, 13811i), vec4<i32>(-1i, 1i, 28636i, 2147483647i), vec4<i32>(2147483647i, i32(-2147483648), 1i, -1i), vec4<i32>(0i, 9523i, -23019i, -1i), vec4<i32>(-1i, i32(-2147483648), 1i, i32(-2147483648)), vec4<i32>(2147483647i, 29452i, -5695i, 0i), vec4<i32>(-8383i, -15058i, -2565i, 9039i), vec4<i32>(36004i, -59054i, 47742i, 17878i), vec4<i32>(9704i, -1i, 2147483647i, 8986i), vec4<i32>(-1i, 2535i, 2147483647i, 1i), vec4<i32>(17402i, i32(-2147483648), -9835i, 61210i), vec4<i32>(-14985i, 8225i, 1i, -1i), vec4<i32>(19876i, i32(-2147483648), 4746i, 21430i), vec4<i32>(i32(-2147483648), 7360i, 8078i, -11476i), vec4<i32>(1i, -48351i, -6083i, 2147483647i), vec4<i32>(i32(-2147483648), 29837i, 0i, 2147483647i), vec4<i32>(-52560i, 31799i, -1i, i32(-2147483648)), vec4<i32>(33022i, i32(-2147483648), 193i, 20824i), vec4<i32>(-35806i, 2477i, i32(-2147483648), -43569i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(global1.x, 25u)];
    var var_1 = 1u;
    var_1 = global1.x;
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, abs(_wgslsmith_mod_i32(41642i << (1u % 32u), u_input.b & -49657i)), _wgslsmith_add_i32(4759i, -1i) | _wgslsmith_mult_i32(i32(-1i) * -13719i, -u_input.b)), vec3<i32>(_wgslsmith_div_i32(var_0.e, 1i), u_input.b, ~max(8668i, var_0.e)));
    let var_3 = var_0.c;
    var var_4 = i32(-1i) * -2483i;
    var var_5 = !vec3<bool>(select(255i, -24906i, var_0.a) <= firstTrailingBit(_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(7856u, 6u)], vec4<i32>(-11346i, u_input.b, 0i, -10976i))), !all(vec3<bool>(var_0.a, false, var_0.a)), any(select(select(vec2<bool>(true, true), vec2<bool>(var_0.a, var_0.a), var_0.a), !vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a))));
    let var_6 = _wgslsmith_f_op_f32(trunc(var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_0.b, 4294967295u, 1u), -1i, ~(~((vec2<u32>(131750u, global1.x) << (vec2<u32>(u_input.a, 48365u) % vec2<u32>(32u))) & abs(var_0.d))), -u_input.b);
}

