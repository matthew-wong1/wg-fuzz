struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 6>;

var<private> global1: Struct_5;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec2<bool>(true, true), true, vec2<i32>(-42820i, 6161i), vec2<bool>(false, false), -50894i), Struct_1(vec2<bool>(true, true), true, vec2<i32>(2147483647i, 7043i), vec2<bool>(false, true), 0i), Struct_1(vec2<bool>(true, false), true, vec2<i32>(17286i, i32(-2147483648)), vec2<bool>(false, true), 9262i), Struct_1(vec2<bool>(false, false), true, vec2<i32>(-15568i, -40803i), vec2<bool>(true, true), 58531i), Struct_1(vec2<bool>(true, false), true, vec2<i32>(-14296i, -44865i), vec2<bool>(false, true), 0i), Struct_1(vec2<bool>(true, false), false, vec2<i32>(-1i, 66598i), vec2<bool>(false, false), -30537i), Struct_1(vec2<bool>(true, true), true, vec2<i32>(29993i, -21036i), vec2<bool>(false, true), i32(-2147483648)));

var<private> global3: array<bool, 20>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> i32 {
    let var_0 = ~u_input.a.xy;
    global2 = array<Struct_1, 7>();
    let var_1 = u_input.b.zx >> (~vec2<u32>(37471u, u_input.a.x) % vec2<u32>(32u));
    var var_2 = Struct_5(~4294967295u);
    global2 = array<Struct_1, 7>();
    return -2147483647i;
}

fn func_3(arg_0: bool, arg_1: Struct_4) -> Struct_4 {
    global1 = Struct_5(28240u);
    let var_0 = ~(-min(~vec3<i32>(1i, -37896i, u_input.d), vec3<i32>(arg_1.b.c, arg_1.c.x, -57132i)) << (u_input.a.xyx % vec3<u32>(32u)));
    let var_1 = Struct_5(~_wgslsmith_div_u32(arg_1.a, ~69304u) << (global1.a % 32u));
    let var_2 = global2[_wgslsmith_index_u32(66031u, 7u)];
    let var_3 = firstLeadingBit(~u_input.e);
    return Struct_4(reverseBits(global1.a), Struct_2(Struct_1(!(!vec2<bool>(var_2.a.x, global3[_wgslsmith_index_u32(u_input.a.x, 20u)])), global3[_wgslsmith_index_u32(var_1.a, 20u)], ~_wgslsmith_mod_vec2_i32(var_0.zx, vec2<i32>(arg_1.c.x, 44868i)), vec2<bool>(true, true), -abs(3016i)), u_input.c, select(var_0.x, _wgslsmith_dot_vec2_i32(arg_1.c.ww, var_0.zz), any(vec3<bool>(false, arg_1.b.a.b, false))) >> (arg_1.a % 32u)), global0[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, ~max(arg_1.d.x, 4294967295u)), arg_1.d), var_2.c.x);
}

fn func_1() -> u32 {
    let var_0 = func_3(!(all(select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(global1.a, 20u)], false), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 20u)], false, false, global3[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 20u)], true, global3[_wgslsmith_index_u32(1u, 20u)]))) & !global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(616u, global1.a), 20u)]), Struct_4((_wgslsmith_dot_vec2_u32(vec2<u32>(74993u, global1.a), vec2<u32>(0u, 114065u)) ^ u_input.a.x) & _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(u_input.a.x, global1.a)), min(u_input.a.yz, vec2<u32>(0u, 19240u))), Struct_2(global2[_wgslsmith_index_u32(u_input.a.x, 7u)], vec4<i32>(u_input.d, u_input.c.x, u_input.b.x, 2147483647i) ^ u_input.c, -(~(-32015i))), vec4<i32>(-func_2(), _wgslsmith_div_i32(-63181i, max(u_input.c.x, -2147483647i)), u_input.b.x, -37526i), u_input.a.yyw, -u_input.c.x));
    let var_1 = func_3(global3[_wgslsmith_index_u32(~var_0.a & 4294967295u, 20u)], func_3(true, var_0));
    global3 = array<bool, 20>();
    var var_2 = vec4<bool>(global3[_wgslsmith_index_u32(var_0.a, 20u)], true, select(~(var_0.a | 1u), 7420u, all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 20u)], var_0.b.a.d.x))) < ~var_1.d.x, var_0.b.a.d.x);
    global3 = array<bool, 20>();
    return ~_wgslsmith_sub_u32(select(select(firstTrailingBit(var_0.a), var_1.a, var_1.b.a.c.x <= var_1.e), global1.a & 2542u, true), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, firstLeadingBit(0u)), u_input.a.yx));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global3[_wgslsmith_index_u32(firstTrailingBit(global1.a), 20u)];
    global1 = Struct_5(func_1());
    let var_1 = countOneBits(countOneBits(u_input.b.yy));
    let var_2 = -20786i & _wgslsmith_mod_i32(-(~_wgslsmith_mult_i32(var_1.x, 0i)), -44860i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(264f, -203f, false))), -1055f, _wgslsmith_f_op_f32(-1187f * _wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-696f, 684f)))), 4294967295u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(399f)), _wgslsmith_f_op_f32(min(1045f, 456f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -307f) - _wgslsmith_f_op_f32(f32(-1f) * -798f)), 146f, _wgslsmith_f_op_f32(-2176f * -1000f), _wgslsmith_f_op_f32(1000f + -2134f))), var_2);
}

