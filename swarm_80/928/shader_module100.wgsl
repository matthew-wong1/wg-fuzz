struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_3,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 14> = array<i32, 14>(-48575i, 2147483647i, 7408i, 0i, 0i, -27783i, i32(-2147483648), -1i, -1i, 19492i, -36344i, 2147483647i, -7658i, -36445i);

var<private> global1: array<Struct_3, 19>;

var<private> global2: i32 = 28550i;

var<private> global3: vec2<i32>;

var<private> global4: Struct_3 = Struct_3(false, Struct_2(Struct_1(vec3<u32>(29034u, 34571u, 102066u), -61638i, 1u), Struct_1(vec3<u32>(4294967295u, 16594u, 0u), 1i, 0u), Struct_1(vec3<u32>(17120u, 38929u, 15658u), -11010i, 4294967295u), Struct_1(vec3<u32>(1u, 24951u, 32255u), i32(-2147483648), 22391u)), 34719i, 21005u, 2147483647i);

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-404f, -116f))))));
    global0 = array<i32, 14>();
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(u_input.c.x, 19u)], Struct_1(arg_0.b.a, arg_0.d.b, ~(~(u_input.e.x ^ 0u))), vec3<i32>(40686i, 2147483647i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-46842i, arg_0.a.b), vec2<i32>(60676i, arg_0.d.b)), _wgslsmith_add_i32(-2147483647i, global4.c)), 1i), Struct_3(any(!vec3<bool>(false, global4.a, global4.a)) | !global4.a, Struct_2(Struct_1(vec3<u32>(u_input.e.x, 1u, 0u), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global4.d, 14u)], global0[_wgslsmith_index_u32(global4.b.b.a.x, 14u)]), ~u_input.c.x), Struct_1(_wgslsmith_add_vec3_u32(arg_0.a.a, vec3<u32>(arg_0.b.c, global4.b.a.c, 4294967295u)), reverseBits(arg_0.c.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.b.c, 4294967295u, 22119u, u_input.c.x), vec4<u32>(40231u, 4294967295u, 0u, 4294967295u))), arg_0.c, Struct_1(~vec3<u32>(0u, arg_0.b.c, arg_0.b.c), u_input.b, max(u_input.c.x, 0u))), abs(~1i), 4294967295u, _wgslsmith_sub_i32(13267i, _wgslsmith_sub_i32(global4.b.a.b, 1i))), select(select(select(!vec3<bool>(false, global4.a, false), select(vec3<bool>(false, true, true), vec3<bool>(global4.a, true, true), vec3<bool>(false, false, global4.a)), global4.a), vec3<bool>(global4.a && true, global4.a, false), global4.a), vec3<bool>(true, global4.a, all(select(vec4<bool>(global4.a, global4.a, true, false), vec4<bool>(global4.a, global4.a, true, true), global4.a))), any(select(!vec4<bool>(global4.a, global4.a, false, true), vec4<bool>(false, global4.a, false, true), select(vec4<bool>(false, global4.a, global4.a, global4.a), vec4<bool>(global4.a, global4.a, global4.a, false), false)))));
    let var_2 = max(arg_0.a.a, var_1.a.b.d.a | min(global4.b.b.a, select(select(vec3<u32>(12100u, 4294967295u, 52195u), vec3<u32>(var_1.b.a.x, 791u, arg_0.b.c), global4.a), global4.b.b.a, !global4.a)));
    var var_3 = var_1.c;
    return ~abs(var_2.x);
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-411f))));
    global3 = (vec2<i32>(-1i) * -min(vec2<i32>(1i, 1i), vec2<i32>(global4.c, -29518i))) | ((_wgslsmith_mod_vec2_i32(-vec2<i32>(global3.x, -37012i), vec2<i32>(global0[_wgslsmith_index_u32(u_input.e.x, 14u)], global4.c)) | -abs(vec2<i32>(u_input.d, global0[_wgslsmith_index_u32(72180u, 14u)]))) >> (~global4.b.a.a.zz % vec2<u32>(32u)));
    global4 = global1[_wgslsmith_index_u32(4294967295u, 19u)];
    global0 = array<i32, 14>();
    var var_1 = Struct_2(Struct_1(vec3<u32>(func_3(global4.b), _wgslsmith_dot_vec4_u32(vec4<u32>(global4.b.d.a.x, 4294967295u, u_input.c.x, 4294967295u), u_input.a), global4.d) >> (_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(u_input.a.x, global4.d, u_input.e.x)), u_input.a.yzz) % vec3<u32>(32u)), -8224i, select(_wgslsmith_dot_vec3_u32(max(global4.b.c.a, vec3<u32>(77070u, global4.d, u_input.c.x)), vec3<u32>(global4.b.a.a.x, global4.d, 1u)), _wgslsmith_dot_vec4_u32(firstLeadingBit(u_input.a), vec4<u32>(7485u, 4294967295u, u_input.a.x, 1u)), true)), global4.b.c, Struct_1(vec3<u32>(1u, ~reverseBits(global4.d), 1u), 1i, _wgslsmith_sub_u32(~global4.d, 38630u) >> (u_input.e.x % 32u)), global4.b.c);
    return -1i;
}

fn func_1() -> i32 {
    global4 = Struct_3(true, global4.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global4.e & (global0[_wgslsmith_index_u32(u_input.a.x, 14u)] | global4.c), func_2()), select(vec2<i32>(_wgslsmith_sub_i32(37777i, global0[_wgslsmith_index_u32(0u, 14u)]), global3.x), firstLeadingBit(vec2<i32>(-16081i, global3.x)), !global4.a)), firstLeadingBit(func_3(global4.b)), (-u_input.d & func_2()) >> (global4.d % 32u));
    global2 = (i32(-1i) * -8113i) >> (abs(_wgslsmith_sub_u32(~_wgslsmith_sub_u32(u_input.a.x, 142287u), _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.a))) % 32u);
    global3 = _wgslsmith_add_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 1i), ~min(abs(vec2<i32>(0i, 2147483647i)), vec2<i32>(-1i, global0[_wgslsmith_index_u32(0u, 14u)])) | _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, global3.x)), vec2<i32>(global4.e, -29836i) ^ vec2<i32>(1i, global0[_wgslsmith_index_u32(140079u, 14u)])), select(-vec2<i32>(-33584i, global0[_wgslsmith_index_u32(u_input.e.x, 14u)]), firstTrailingBit(vec2<i32>(-1i, global0[_wgslsmith_index_u32(1u, 14u)])), 0u <= global4.d)));
    let var_0 = _wgslsmith_mult_u32(abs(_wgslsmith_mod_u32(u_input.e.x, 28277u)), reverseBits(~(~14058u & ~u_input.e.x)));
    global0 = array<i32, 14>();
    return _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(23043u, 14u)], _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(global4.b.b.a.x, 14u)], u_input.b), 37321i), vec2<i32>(_wgslsmith_div_i32(min(1i, 21109i), ~6609i), select(2147483647i, -2147483647i, true))), u_input.b >> (~var_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 19>();
    var var_0 = 1u;
    global1 = array<Struct_3, 19>();
    var var_1 = ~0i;
    global3 = ~select(vec2<i32>(22322i, -24539i), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(-2147483647i, global4.b.b.b)), min(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 14u)], 1i), vec2<i32>(-2147483647i, 2147483647i))), max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, 6750i), vec2<i32>(global0[_wgslsmith_index_u32(88627u, 14u)], global0[_wgslsmith_index_u32(1813u, 14u)]), vec2<i32>(global4.b.b.b, -1i)), vec2<i32>(global3.x, -27172i))), global4.a);
    let var_2 = Struct_1(vec3<u32>(u_input.e.x, 4294967295u, 1u), func_1(), ~(~79855u));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -306f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-931f, 1443f)), _wgslsmith_f_op_f32(-901f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(519f))))))));
    let var_4 = min(u_input.a, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(790f, _wgslsmith_f_op_f32(f32(-1f) * -1378f), _wgslsmith_f_op_f32(var_3 - -162f), var_3) + vec4<f32>(-997f, _wgslsmith_f_op_f32(f32(-1f) * -832f), _wgslsmith_f_op_f32(abs(var_3)), _wgslsmith_f_op_f32(var_3 + 841f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-305f, -1522f, -1000f, var_3))))), select(!vec4<bool>(global4.a, global4.a, true, true), select(select(vec4<bool>(false, true, false, global4.a), vec4<bool>(true, false, global4.a, global4.a), global4.a), vec4<bool>(true, false, true, true), vec4<bool>(global4.a, global4.a, global4.a, global4.a)), vec4<bool>(global4.a || true, true, true, global4.a)))), _wgslsmith_f_op_f32(var_3 - _wgslsmith_f_op_f32(var_3 * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_3 * 478f), _wgslsmith_f_op_f32(1394f - var_3)))));
}

