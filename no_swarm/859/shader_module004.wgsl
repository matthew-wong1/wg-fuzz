struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true));

var<private> global1: array<vec2<bool>, 18>;

var<private> global2: Struct_1 = Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(false, true), 1u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(vec2<u32>(global2.c, global2.a.x), !select(select(global1[_wgslsmith_index_u32(34833u, 18u)], vec2<bool>(global2.b.x, true), global1[_wgslsmith_index_u32(4294967295u, 18u)]), global1[_wgslsmith_index_u32(global2.c, 18u)], any(vec2<bool>(true, true))), 0u);
    let var_1 = countOneBits(~vec3<u32>(_wgslsmith_add_u32(var_0.a.x, 0u & u_input.a), 1u, global2.a.x));
    let var_2 = !any(vec2<bool>(true, true));
    global1 = array<vec2<bool>, 18>();
    let var_3 = !(!(global2.b.x || (var_0.c >= global2.c)));
    return any(!global0[_wgslsmith_index_u32(16960u, 32u)]);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    global0 = array<vec4<bool>, 32>();
    global0 = array<vec4<bool>, 32>();
    global1 = array<vec2<bool>, 18>();
    global0 = array<vec4<bool>, 32>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-1000f + 1150f), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-854f * arg_1))) + arg_1)));
    return any(!arg_0.b);
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-380f)), 902f, _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(step(-105f, 1407f))), _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-978f, 462f, -1000f, -435f) * vec4<f32>(617f, -1335f, 1249f, -518f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(451f, 1237f, 143f, 438f) + vec4<f32>(-1207f, 1717f, -1529f, -521f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1886f, -264f, -203f, -845f)))))))), global2.b.x));
    var var_1 = abs(vec2<u32>(~(~(~u_input.b)), abs(1u)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - 649f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(268f, -1435f)), _wgslsmith_f_op_f32(397f * var_0.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1205f)))), var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, -230f, global2.b.x)) - -1000f)))));
    var var_2 = Struct_3(vec4<bool>(all(!select(vec3<bool>(global2.b.x, global2.b.x, global2.b.x), vec3<bool>(true, global2.b.x, global2.b.x), false)), !global2.b.x || !global2.b.x, false, true), !func_2(), select(!vec3<bool>(global2.b.x, !global2.b.x, global2.b.x | global2.b.x), select(select(!vec3<bool>(true, false, global2.b.x), select(vec3<bool>(true, global2.b.x, true), vec3<bool>(true, false, global2.b.x), vec3<bool>(global2.b.x, global2.b.x, global2.b.x)), func_3(Struct_1(vec2<u32>(u_input.a, 21442u), vec2<bool>(true, true), u_input.a), 1000f)), vec3<bool>(!global2.b.x, true, global2.b.x), vec3<bool>(all(global2.b), !global2.b.x, any(vec3<bool>(false, global2.b.x, global2.b.x)))), select(select(vec3<bool>(global2.b.x, false, global2.b.x), select(vec3<bool>(global2.b.x, global2.b.x, true), vec3<bool>(true, true, false), false), all(vec2<bool>(false, global2.b.x))), select(!vec3<bool>(true, global2.b.x, false), !vec3<bool>(false, global2.b.x, true), !vec3<bool>(global2.b.x, false, global2.b.x)), select(select(vec3<bool>(global2.b.x, true, true), vec3<bool>(global2.b.x, true, global2.b.x), true), vec3<bool>(false, global2.b.x, true), true))), !(!(!vec3<bool>(true, true, global2.b.x))), Struct_2(_wgslsmith_dot_vec4_u32(reverseBits(~vec4<u32>(13636u, global2.a.x, global2.c, 87597u)), abs(vec4<u32>(9709u, u_input.a, 82209u, 0u)) ^ (vec4<u32>(var_1.x, 4294967295u, 1u, global2.c) & vec4<u32>(global2.a.x, 4294967295u, var_1.x, u_input.b))), ~vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global2.a.x, var_1.x, 39843u), vec4<u32>(global2.a.x, 30543u, 4294967295u, var_1.x)), global2.a.x)));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), var_0.x, _wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(338f, 530f)), _wgslsmith_div_f32(1218f, _wgslsmith_div_f32(-1316f, var_0.x))))));
    return select(vec4<i32>(u_input.c.x, -35160i, ~firstLeadingBit(u_input.c.x), u_input.c.x), abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, -2147483647i), vec4<i32>(-17824i, 35076i, u_input.c.x, u_input.c.x))) & _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.c.x), -vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x)), var_2.a) >> (_wgslsmith_div_vec4_u32(~(~vec4<u32>(0u, 62414u, var_2.e.b.x, u_input.b)) ^ countOneBits(~vec4<u32>(35630u, global2.c, var_1.x, var_1.x)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.a, 8224u), vec4<u32>(u_input.a, 21185u, u_input.b, var_2.e.b.x)) >> (abs(vec4<u32>(4294967295u, global2.c, 1u, u_input.b)) % vec4<u32>(32u)))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_div_u32(global2.c, u_input.a), abs(4294967295u)), firstTrailingBit(~47296u) >> (global2.a.x % 32u));
    let var_1 = abs(func_1());
    var var_2 = 26141u;
    var_0 = global2.a;
    global1 = array<vec2<bool>, 18>();
    var var_3 = select(firstLeadingBit(~countOneBits(global2.a) >> (global2.a % vec2<u32>(32u))), vec2<u32>(u_input.b, abs(32622u >> (1u % 32u))) >> (vec2<u32>(var_0.x, _wgslsmith_mult_u32(max(1u, u_input.a), u_input.b)) % vec2<u32>(32u)), global2.b.x);
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(647f - -1311f), _wgslsmith_f_op_f32(756f - -296f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-1080f * -1000f), _wgslsmith_f_op_f32(-1486f * 447f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(659f, -246f))))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -110f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.x, _wgslsmith_f_op_f32(max(var_4.x, _wgslsmith_f_op_f32(629f + var_4.x))), _wgslsmith_f_op_f32(floor(-330f)))) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-733f, 135f, -904f), vec3<f32>(var_4.x, 1281f, -1000f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.x, var_4.x, -1000f) * vec3<f32>(var_4.x, var_4.x, -1606f)), true))))));
    let var_6 = Struct_1(select(~vec2<u32>(u_input.a, 33180u), vec2<u32>(97353u, _wgslsmith_dot_vec2_u32(vec2<u32>(24620u, var_0.x), vec2<u32>(var_3.x, 4294967295u))), select(select(!global2.b, vec2<bool>(global2.b.x, false), func_2()), !global2.b, global1[_wgslsmith_index_u32(var_0.x, 18u)])), vec2<bool>(-39138i < _wgslsmith_mod_i32(select(30911i, -1i, global2.b.x), _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, u_input.c.x)), !all(!global2.b)), 10752u);
    let x = u_input.a;
    s_output = StorageBuffer(0i, 0i, _wgslsmith_clamp_u32(reverseBits(global2.a.x | var_0.x), 42017u, select(var_6.a.x, var_3.x, var_6.b.x)), select(u_input.c.yy, u_input.c.xx, true), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(var_5, vec3<f32>(var_5.x, 2288f, var_5.x), false))))))));
}

