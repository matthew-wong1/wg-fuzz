struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec4<u32>(0u, 4294967295u, 39403u, 4294967295u), Struct_1(vec3<bool>(false, true, false), false, 1u), vec4<i32>(-37768i, 2147483647i, 38218i, 1822i));

var<private> global1: Struct_2 = Struct_2(true, vec4<u32>(35696u, 1u, 0u, 30510u), Struct_1(vec3<bool>(true, true, true), false, 9791u), vec4<i32>(0i, i32(-2147483648), 0i, i32(-2147483648)));

var<private> global2: array<vec3<i32>, 15> = array<vec3<i32>, 15>(vec3<i32>(-1i, -336i, 45512i), vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(22332i, 2147483647i, -3129i), vec3<i32>(0i, -7865i, 1i), vec3<i32>(10551i, -5774i, 17352i), vec3<i32>(i32(-2147483648), -1i, -4784i), vec3<i32>(33911i, 2147483647i, 8109i), vec3<i32>(-15421i, -1i, -19569i), vec3<i32>(-2078i, -14134i, -15045i), vec3<i32>(13754i, 27453i, -9019i), vec3<i32>(14297i, 27413i, -31222i), vec3<i32>(-1i, i32(-2147483648), -1i), vec3<i32>(i32(-2147483648), 15359i, 2147483647i), vec3<i32>(-6022i, 12063i, 4572i), vec3<i32>(-1i, 38395i, 2147483647i));

var<private> global3: Struct_1 = Struct_1(vec3<bool>(false, true, false), false, 89149u);

var<private> global4: array<Struct_1, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    let var_0 = global4[_wgslsmith_index_u32(~global1.c.c, 18u)];
    let var_1 = ~55310u;
    var var_2 = Struct_1(!select(vec3<bool>(global3.b, true, global1.a || true), var_0.a, global3.b), arg_0.c.a.x || true, ~global3.c);
    return arg_0;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<u32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -648f) - -1516f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-395f * -1087f), 1f)))) * _wgslsmith_f_op_f32(trunc(1589f))));
    let var_1 = true;
    var var_2 = firstTrailingBit(~(((vec2<i32>(u_input.a, 1i) | u_input.c.xy) | vec2<i32>(-5088i, 0i)) << (~(~global1.b.wz) % vec2<u32>(32u))));
    var_2 = vec2<i32>(-1i, (-1i ^ var_2.x) & -27244i);
    var_2 = -arg_0.d.wx;
    return abs(vec4<u32>(_wgslsmith_div_u32(~select(arg_0.b.x, 23967u, arg_1.c.b), abs(~1u)), ~global3.c, arg_1.c.c, ~_wgslsmith_div_u32(arg_2.x, 4294967295u)));
}

fn func_1() -> vec2<u32> {
    global1 = func_2(Struct_2(any(vec3<bool>(true, !global3.b, false)), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(global0.b, vec4<u32>(global1.c.c, 34679u, 4294967295u, 10760u)), vec4<u32>(global1.c.c, global1.c.c, global1.b.x, 92818u)), Struct_1(global1.c.a, select(true || global3.b, false, true), global0.c.c), global1.d));
    let var_0 = Struct_2(global0.a, ~(~vec4<u32>(global1.c.c, global3.c, 1127u, global0.c.c) & select(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.b.x, global1.c.c, 0u, global0.b.x), global1.b), vec4<u32>(25472u, 30388u, 4294967295u, 0u), !vec4<bool>(true, true, false, global3.a.x))), global1.c, _wgslsmith_mod_vec4_i32(global0.d, ~u_input.c));
    global3 = func_2(Struct_2(~(global1.b.x | global0.b.x) >= (0u >> (abs(global3.c) % 32u)), (reverseBits(vec4<u32>(global1.b.x, global3.c, global1.b.x, 105819u)) & ~vec4<u32>(global3.c, var_0.b.x, 63798u, global3.c)) << (func_3(Struct_2(true, vec4<u32>(global1.b.x, global3.c, 62603u, global3.c), Struct_1(vec3<bool>(global1.c.b, global1.c.a.x, global1.c.b), var_0.a, global3.c), global1.d), Struct_2(false, global1.b, Struct_1(global0.c.a, true, 1u), global0.d), global0.b) % vec4<u32>(32u)), global0.c, global0.d)).c;
    var var_1 = ~(vec2<u32>(~1u | func_2(var_0).c.c, ~4294967295u) ^ vec2<u32>(~global1.b.x << (global1.c.c % 32u), global0.c.c));
    let var_2 = global0.b.zxz;
    return vec2<u32>(~var_1.x >> (firstTrailingBit(0u | firstTrailingBit(var_2.x)) % 32u), var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_u32(~global1.b, ~firstLeadingBit(vec4<u32>(1u | global1.b.x, global3.c, 35424u, ~global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(select(var_0.wx, _wgslsmith_clamp_vec2_u32(func_1(), vec2<u32>(1u, _wgslsmith_sub_u32(global3.c, global3.c)), ~vec2<u32>(0u, 4294967295u) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(1u, global1.c.c), global0.b.zw)), select(false, true == !global0.c.a.x, true)));
}

