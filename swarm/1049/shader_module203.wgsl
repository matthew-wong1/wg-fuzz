struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec4<u32>(4294967295u, 4294967295u, 41002u, 65286u), 32507i, true), Struct_1(vec4<u32>(0u, 0u, 78240u, 1u), -9238i, true), Struct_1(vec4<u32>(4294967295u, 0u, 23224u, 24531u), -21741i, true), Struct_1(vec4<u32>(32549u, 1u, 0u, 4294967295u), -1i, true));

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 24114u, 0u, 0u), -16889i, true);

var<private> global2: u32 = 77584u;

var<private> global3: vec3<i32> = vec3<i32>(-16108i, 25779i, -322i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(global1.a, global3.x, global1.c);
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(select(max(u_input.a, vec4<u32>(~u_input.c, _wgslsmith_add_u32(0u, u_input.c), 4294967295u, min(6165u, global1.a.x))), select(~global1.a, _wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(8188u, var_0.a.x, global1.a.x, u_input.a.x)) << (~var_0.a % vec4<u32>(32u)), any(!vec3<bool>(true, var_0.c, true))), all(!(!vec2<bool>(global1.c, false)))), reverseBits(abs(~_wgslsmith_mod_i32(-1i, 2147483647i))), true);
    global2 = countOneBits(~_wgslsmith_div_u32(var_1.a.x, min(~12148u, 29957u)));
    global3 = _wgslsmith_mult_vec3_i32(u_input.b.xxz, u_input.b.zyx | _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global3.x, u_input.b.x, var_0.b), abs(vec3<i32>(var_1.b, var_1.b, -2147483647i)), max(vec3<i32>(u_input.b.x, 0i, global3.x), u_input.b.zwy)), _wgslsmith_div_vec3_i32(~vec3<i32>(global1.b, var_1.b, -30794i), vec3<i32>(38806i, 0i, 1i))));
    return min(reverseBits(vec4<u32>(~(~19172u), var_1.a.x, 30459u, select(min(u_input.a.x, global1.a.x), max(0u, 1u), !var_0.c))), var_0.a << (var_0.a % vec4<u32>(32u)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = Struct_1(reverseBits(func_3() >> (_wgslsmith_mult_vec4_u32(vec4<u32>(14671u, 57776u, u_input.c, 27380u), global1.a | u_input.a) % vec4<u32>(32u))), select(-global1.b, select(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3.x, global3.x), vec3<i32>(-44710i, 1i, global3.x)), u_input.b.x, any(select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, arg_0, global1.c), vec3<bool>(false, global1.c, global1.c)))), !(~1u < _wgslsmith_clamp_u32(global1.a.x, 1u, 4294967295u))), !(!(arg_0 || false)));
    global3 = u_input.b.xzz;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1819f, -459f), _wgslsmith_f_op_f32(-2398f - -228f)))))) + 617f);
    var var_2 = Struct_1(var_0.a | vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, global1.a.x, global1.a.x, 32532u), var_0.a) ^ (u_input.a.x << (4294967295u % 32u)), ~(~u_input.a.x), min(u_input.a.x, global1.a.x), (45756u & var_0.a.x) & ~102567u), abs(_wgslsmith_mult_i32(~6040i, ~_wgslsmith_clamp_i32(u_input.b.x, global3.x, 22857i))), all(!vec2<bool>(43831i < u_input.b.x, var_0.c & global1.c)));
    var_1 = _wgslsmith_f_op_f32(-631f + -641f);
    return _wgslsmith_sub_u32(~13843u, firstLeadingBit(0u));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> vec4<f32> {
    global2 = u_input.c;
    global2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(30845i == (global1.b << (global1.a.x % 32u))), _wgslsmith_mod_u32(global1.a.x, ~66758u)), _wgslsmith_div_u32(~4294967295u, _wgslsmith_mod_u32(44789u, 4294967295u)));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1122f)), 945f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1000f, -292f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -852f), _wgslsmith_f_op_f32(-969f + 1049f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1220f))))), 1203f);
    var var_1 = vec3<bool>(true, select(!all(select(vec3<bool>(global1.c, global1.c, arg_1.c), vec3<bool>(arg_1.c, global1.c, arg_1.c), vec3<bool>(true, true, true))), all(vec4<bool>(global1.c, arg_1.c, false, global1.c | global1.c)), !global1.c), true);
    var var_2 = -475f;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(588f, _wgslsmith_f_op_f32(var_0.x + 2205f), var_0.x, _wgslsmith_f_op_f32(635f * -1347f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.x))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - var_0.x), _wgslsmith_f_op_f32(-299f + _wgslsmith_f_op_f32(step(-1115f, 1000f)))), vec4<bool>(var_1.x, true, false, global1.c))) - vec4<f32>(_wgslsmith_f_op_f32(var_0.x * -342f), -608f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -659f))), var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: bool) -> Struct_1 {
    let var_0 = abs(_wgslsmith_add_u32(max(~arg_0.a.x, arg_0.a.x), 34328u));
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 4u)];
    var var_2 = Struct_1(vec4<u32>(arg_0.a.x >> (1u % 32u), _wgslsmith_add_u32(arg_0.a.x, ~func_3().x), _wgslsmith_add_u32(1u, 32100u), firstTrailingBit(3788u << ((var_1.a.x << (4294967295u % 32u)) % 32u))), _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(var_1.b), 40221i) | reverseBits(global3.x), -9872i), true);
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global0[_wgslsmith_index_u32(~(~u_input.c) | min(global1.a.x, ~_wgslsmith_mod_u32(global1.a.x, 11220u)), 4u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global1.a.zz, Struct_1(vec4<u32>(0u, global1.a.x, 1u, global1.a.x), global1.b, global1.c))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-158f, 1767f, -1439f, -185f)))) + vec4<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_vec4_f32(func_1(u_input.a.zy, global0[_wgslsmith_index_u32(26686u, 4u)])).x)), _wgslsmith_div_f32(-160f, _wgslsmith_f_op_f32(min(518f, 1000f))), _wgslsmith_f_op_f32(floor(-251f)), 327f)), true && global1.c);
    global0 = array<Struct_1, 4>();
    let var_1 = Struct_1(~firstTrailingBit(~u_input.a << (_wgslsmith_sub_vec4_u32(global1.a, vec4<u32>(59731u, 0u, var_0.a.x, u_input.a.x)) % vec4<u32>(32u))), _wgslsmith_clamp_i32(1i, global3.x, _wgslsmith_dot_vec2_i32(~global3.yz, _wgslsmith_add_vec2_i32(vec2<i32>(var_0.b, global1.b), u_input.b.wz)) ^ 0i), true);
    let var_2 = global1.a.x;
    var var_3 = 2147483647i;
    global0 = array<Struct_1, 4>();
    global2 = 71179u;
    var var_4 = min(vec4<u32>(var_1.a.x, var_0.a.x << (select(50605u, ~var_1.a.x, true) % 32u), ~(~0u), _wgslsmith_add_u32(var_0.a.x, var_0.a.x)), ~(vec4<u32>(countOneBits(var_1.a.x), _wgslsmith_dot_vec2_u32(var_1.a.yy, u_input.a.yz), reverseBits(1u), 0u) >> (global1.a % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b, ~vec2<u32>(17355u, firstLeadingBit(39097u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1937f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1051f - _wgslsmith_f_op_f32(f32(-1f) * -419f)), 1f))), var_1.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(-335f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-568f, 400f)), -974f)));
}

