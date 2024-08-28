struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1651f, 1529f), vec3<bool>(false, false, true), true);

var<private> global1: array<f32, 13> = array<f32, 13>(-883f, -1031f, -1335f, -2022f, -958f, 158f, 1073f, -819f, -344f, 566f, -281f, -1000f, 1638f);

var<private> global2: array<vec3<u32>, 29> = array<vec3<u32>, 29>(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(23652u, 4294967295u, 0u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 1570u, 4294967295u), vec3<u32>(1u, 31216u, 129864u), vec3<u32>(0u, 24865u, 1u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(51904u, 7666u, 1u), vec3<u32>(1u, 5581u, 4294967295u), vec3<u32>(10786u, 4294967295u, 23413u), vec3<u32>(1u, 3984u, 25831u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 29760u), vec3<u32>(0u, 4294967295u, 15719u), vec3<u32>(1u, 31929u, 4294967295u), vec3<u32>(40618u, 1u, 33941u), vec3<u32>(60224u, 0u, 0u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(58062u, 900u, 1685u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(83743u, 32553u, 103012u), vec3<u32>(0u, 113250u, 3118u), vec3<u32>(4294967295u, 4294967295u, 4143u), vec3<u32>(25552u, 7267u, 491u), vec3<u32>(1u, 85001u, 0u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 42097u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(0u, 26700u, 4294967295u));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), global1[_wgslsmith_index_u32(u_input.e, 13u)]));
    var var_1 = global3[_wgslsmith_index_u32(u_input.b, 8u)];
    let var_2 = _wgslsmith_add_vec4_i32(reverseBits(-_wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(0i, 22451i, 13171i, u_input.c.x))) << ((max(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, u_input.b, u_input.e, 57663u), vec4<u32>(u_input.a, 50085u, u_input.d.x, u_input.d.x)), vec4<u32>(36235u, 30605u, u_input.d.x, u_input.e) << (u_input.d % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 0u, 0u), ~vec4<u32>(4294967295u, u_input.e, 0u, 26518u))) % vec4<u32>(32u)), max(~vec4<i32>(57485i | u_input.c.x, u_input.c.x, 1i, ~18054i), vec4<i32>(1i, -1i, u_input.c.x, -28768i)));
    var var_3 = u_input.d;
    return -335f <= arg_0.a.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-608f, 978f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.a.x, 470f), vec2<f32>(-1313f, arg_1.a.x)))))), select(arg_1.b, arg_1.b, global0.b.x), false);
    global3 = array<Struct_1, 8>();
    let var_1 = Struct_1(arg_1.a, select(arg_0.b, vec3<bool>(false | any(vec4<bool>(global0.b.x, var_0.c, global0.b.x, false)), select(select(true, false, arg_0.b.x), false, global0.c), arg_1.b.x), false), arg_0.b.x);
    var var_2 = vec2<bool>(true, all(global0.b));
    global2 = array<vec3<u32>, 29>();
    return ~u_input.b;
}

fn func_2() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, 1953f, -1319f)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, global1[_wgslsmith_index_u32(4294967295u, 13u)], -481f)))) * vec3<f32>(-920f, 1353f, global1[_wgslsmith_index_u32(u_input.b, 13u)])))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1655f + global0.a.x) - _wgslsmith_f_op_f32(trunc(-1629f))), _wgslsmith_f_op_f32(var_0.x + 1288f), -742f);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1397f)));
    global3 = array<Struct_1, 8>();
    let var_2 = ~vec2<u32>(~u_input.b, _wgslsmith_mod_u32(func_3(global3[_wgslsmith_index_u32(abs(0u), 8u)], Struct_1(global0.a, vec3<bool>(false, global0.b.x, false), global0.c)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(56465u, u_input.e), 1u)));
    return StorageBuffer(u_input.c.xyw, max(var_2.x >> ((reverseBits(0u) & _wgslsmith_dot_vec2_u32(var_2, var_2)) % 32u), 41663u), _wgslsmith_add_vec3_u32(select(firstLeadingBit(vec3<u32>(1u, u_input.b, 35060u)), ~vec3<u32>(76323u, 4294967295u, 0u), global0.b) & ~(~u_input.d.ywy), firstTrailingBit(~vec3<u32>(var_2.x, var_2.x, 47839u))), u_input.c | u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 8>();
    global3 = array<Struct_1, 8>();
    let var_0 = ~(~(-select(_wgslsmith_sub_vec3_i32(u_input.c.ywy, vec3<i32>(0i, u_input.c.x, -49281i)), _wgslsmith_clamp_vec3_i32(u_input.c.xxx, u_input.c.zwz, u_input.c.xxx), vec3<bool>(false, global0.c, true))));
    let var_1 = ~67893u;
    var var_2 = var_0.x;
    let var_3 = _wgslsmith_sub_i32(33920i, var_0.x);
    let var_4 = Struct_1(global0.a, vec3<bool>(func_1(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~var_1, reverseBits(0u)), 8u)]), !global0.c, all(!(!global0.b.xz))), global0.b.x);
    let x = u_input.a;
    s_output = func_2();
}

