struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), vec3<bool>(false, true, true));

var<private> global1: array<vec3<f32>, 27> = array<vec3<f32>, 27>(vec3<f32>(116f, -722f, 520f), vec3<f32>(-270f, -1097f, -1077f), vec3<f32>(1935f, 178f, 1183f), vec3<f32>(-233f, -973f, 732f), vec3<f32>(-209f, -177f, -378f), vec3<f32>(-861f, 264f, 353f), vec3<f32>(608f, 2156f, -492f), vec3<f32>(834f, -1266f, -710f), vec3<f32>(-287f, 566f, 473f), vec3<f32>(247f, 327f, 880f), vec3<f32>(963f, -785f, -110f), vec3<f32>(-1403f, 937f, -1000f), vec3<f32>(503f, 1000f, -132f), vec3<f32>(-2441f, 1830f, -2930f), vec3<f32>(-1551f, -218f, 1409f), vec3<f32>(-838f, 957f, 1977f), vec3<f32>(554f, 872f, 1156f), vec3<f32>(-689f, 1051f, 197f), vec3<f32>(728f, 474f, 1536f), vec3<f32>(-631f, 577f, -314f), vec3<f32>(1894f, -833f, 1000f), vec3<f32>(-1006f, 512f, 246f), vec3<f32>(1000f, 952f, 164f), vec3<f32>(-625f, 894f, 626f), vec3<f32>(-684f, -502f, 1322f), vec3<f32>(-414f, 1000f, 1000f), vec3<f32>(-524f, -352f, 327f));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 24>;

var<private> global4: u32 = 36140u;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = -vec4<i32>(countOneBits(u_input.b), u_input.b ^ _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), _wgslsmith_sub_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), countOneBits(u_input.b), u_input.b);
    let var_1 = var_0.ww;
    let var_2 = vec3<bool>(!global0.b.x, any(global2.b), true);
    var var_3 = u_input.b;
    global0 = Struct_1(global2.a, !vec3<bool>(var_2.x, ~31236u < _wgslsmith_div_u32(u_input.a.x, u_input.c.x), !(global2.a.x & var_2.x)));
    return _wgslsmith_div_u32(4294967295u, 29135u);
}

fn func_2(arg_0: f32) -> vec3<bool> {
    let var_0 = ~func_3();
    let var_1 = !vec4<bool>(!global0.a.x, false & !any(vec4<bool>(true, false, true, false)), !(0u > _wgslsmith_dot_vec2_u32(u_input.c.xx, u_input.a.yy)), global0.a.x);
    var var_2 = ~vec3<i32>(max(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 836i), vec2<i32>(-19084i, u_input.b)), 44885i) >> (var_0 % 32u), -_wgslsmith_dot_vec4_i32(-vec4<i32>(92296i, -45122i, u_input.b, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(-5691i, 0i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b))), 1i);
    var var_3 = global3[_wgslsmith_index_u32(78460u, 24u)];
    var var_4 = var_0;
    return select(var_3.b, select(global0.b, global0.b, true), var_1.x);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(select(vec2<bool>(true, true), global2.b.zz, all(!(!vec3<bool>(false, global2.b.x, global0.a.x)))), arg_0.b);
}

fn func_1() -> u32 {
    global1 = array<vec3<f32>, 27>();
    global1 = array<vec3<f32>, 27>();
    global0 = func_4(Struct_1(select(global0.b.yz, select(!vec2<bool>(global0.a.x, global0.b.x), global2.b.xy, true), vec2<bool>(!global2.a.x, false)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1300f)))));
    global0 = func_4(Struct_1(!global2.b.xz, !vec3<bool>(u_input.a.x <= 0u, true, true)));
    global3 = array<Struct_1, 24>();
    return min(6045u ^ func_3(), 1u) << (u_input.a.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3[_wgslsmith_index_u32(0u, 24u)];
    global2 = global3[_wgslsmith_index_u32(~4294967295u, 24u)];
    var var_1 = global3[_wgslsmith_index_u32(~(~func_1()), 24u)];
    let var_2 = abs(_wgslsmith_mod_i32(max(-2147483647i, u_input.b) >> (u_input.c.x % 32u), -33711i)) << (_wgslsmith_dot_vec4_u32(~u_input.c, ~firstLeadingBit(~vec4<u32>(u_input.a.x, 48737u, 56957u, u_input.c.x))) % 32u);
    var_1 = func_4(Struct_1(func_4(func_4(global3[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 24u)])).b.xz, var_1.b));
    var var_3 = global3[_wgslsmith_index_u32(select(u_input.c.x, u_input.c.x, global2.a.x), 24u)];
    var_1 = global3[_wgslsmith_index_u32(~91871u, 24u)];
    var var_4 = _wgslsmith_f_op_f32(round(-1801f));
    var var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(10700u & (0u & u_input.c.x), ~_wgslsmith_div_u32(8606u, u_input.a.x), 0u, ~u_input.c.x), u_input.c | select(vec4<u32>(4294967295u, u_input.c.x, 89155u, u_input.a.x) ^ u_input.c, min(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c.x, 4294967295u), u_input.c), !vec4<bool>(global2.a.x, true, true, false))) ^ ~(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 2147483647i, 2147483647i, 2147483647i) ^ vec4<i32>(0i, countOneBits(var_2), 1i, 19412i | var_2), max(vec4<i32>(17339i, -1i, var_2, -1i) << (firstTrailingBit(u_input.c) % vec4<u32>(32u)), min(-vec4<i32>(u_input.b, 1i, var_2, u_input.b), ~vec4<i32>(u_input.b, var_2, u_input.b, 24920i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.b, -1i, var_2, u_input.b) >> (~vec4<u32>(var_5.x, var_5.x, 90788u, var_5.x) % vec4<u32>(32u)), vec4<i32>(~u_input.b, u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, var_2, -2765i, var_2), vec4<i32>(-53573i, 2147483647i, -1i, u_input.b)), -12682i))));
}

