struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 19>;

var<private> global1: array<i32, 26>;

var<private> global2: array<vec4<u32>, 5>;

var<private> global3: u32 = 0u;

var<private> global4: vec4<f32> = vec4<f32>(-194f, -1326f, 291f, 769f);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> vec4<i32> {
    var var_0 = global4.x;
    var var_1 = !(!vec3<bool>(true, all(vec4<bool>(true, false, true, false)), !all(vec4<bool>(true, true, false, false))));
    global3 = ~u_input.c.x;
    var var_2 = 52034i;
    let var_3 = vec2<bool>(true, var_1.x);
    return vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 26u)], ~u_input.d.x)) >> (1u % 32u), 0i, 17295i, -(i32(-1i) * -global1[_wgslsmith_index_u32(firstTrailingBit(40589u), 26u)]));
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global1 = array<i32, 26>();
    let var_0 = ~(~((firstTrailingBit(vec3<u32>(u_input.c.x, u_input.c.x, 37559u)) | vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) | _wgslsmith_add_vec3_u32(max(vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u), vec3<u32>(4294967295u, u_input.c.x, u_input.c.x)), vec3<u32>(1u, u_input.c.x, 15717u))));
    global1 = array<i32, 26>();
    var var_1 = Struct_2(Struct_1(u_input.b), abs(var_0));
    let var_2 = -_wgslsmith_sub_vec4_i32(-arg_0, reverseBits(_wgslsmith_mult_vec4_i32(-arg_0, func_3())));
    return Struct_1(vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 26u)], -583i));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec4<bool> {
    global1 = array<i32, 26>();
    var var_0 = !vec4<bool>(-1447f == _wgslsmith_f_op_f32(ceil(global4.x)), -35788i >= (u_input.a ^ ~global1[_wgslsmith_index_u32(34671u, 26u)]), firstTrailingBit(u_input.d.x) == _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_1.a.x, u_input.b.x, arg_0) ^ vec4<i32>(arg_1.a.x, 0i, arg_0, arg_1.a.x), ~vec4<i32>(-46092i, arg_1.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], 34974i)), select(true, -467f < _wgslsmith_div_f32(global4.x, global4.x), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), true))));
    var var_1 = Struct_2(arg_1, ~vec3<u32>(_wgslsmith_dot_vec4_u32(~global2[_wgslsmith_index_u32(45820u, 5u)], global2[_wgslsmith_index_u32(1u, 5u)] | global2[_wgslsmith_index_u32(u_input.c.x, 5u)]), ~u_input.c.x, 4294967295u));
    var var_2 = func_2(firstLeadingBit(vec4<i32>(firstLeadingBit(-arg_0), -40892i, 0i, 18686i)));
    var var_3 = ~4294967295u | _wgslsmith_mod_u32(abs(~var_1.b.x), ~0u);
    return !(!(!select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, true), vec4<bool>(false, true, var_0.x, false))));
}

fn func_1() -> f32 {
    let var_0 = Struct_1(u_input.d.xx);
    var var_1 = !vec3<bool>((_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) <= 4294967295u) | all(vec3<bool>(true, true, true)), true, false);
    var_1 = vec3<bool>(!var_1.x, any(func_4(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.c.x), 26u)], func_2(vec4<i32>(-96285i, 38835i, u_input.d.x, global1[_wgslsmith_index_u32(u_input.c.x, 26u)])))) | true, true);
    var var_2 = func_2((vec4<i32>(abs(32518i), var_0.a.x, _wgslsmith_sub_i32(1i, var_0.a.x), u_input.d.x >> (u_input.c.x % 32u)) >> (~min(global2[_wgslsmith_index_u32(0u, 5u)], vec4<u32>(u_input.c.x, 22698u, u_input.c.x, 0u)) % vec4<u32>(32u))) ^ vec4<i32>(-global1[_wgslsmith_index_u32(8202u, 26u)] >> (u_input.c.x % 32u), -global1[_wgslsmith_index_u32(20179u, 26u)] >> (_wgslsmith_mod_u32(24957u, u_input.c.x) % 32u), -2147483647i, countOneBits(u_input.b.x) >> ((51567u & u_input.c.x) % 32u)));
    let var_3 = 700f <= _wgslsmith_f_op_f32(exp2(global4.x));
    return _wgslsmith_f_op_f32(-global4.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((true && (true & all(vec3<bool>(false, false, false)))) & false) | (u_input.d.x >= 2147483647i);
    var_0 = all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), false), vec3<bool>(true, true, false)), true), select(firstLeadingBit(u_input.c.x) == firstLeadingBit(19889u), !all(vec3<bool>(true, true, false)), true)));
    global4 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(round(global4.x)), _wgslsmith_f_op_f32(-global4.x), -407f))))));
    let var_1 = u_input.c.x;
    global1 = array<i32, 26>();
    let var_2 = 11748u;
    global2 = array<vec4<u32>, 5>();
    var var_3 = ~(~_wgslsmith_mult_u32(1u, 1u) & _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 91474u, 53443u), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(15161u, 4294967295u, 1u), vec3<u32>(u_input.c.x, var_2, var_1)))));
    var var_4 = -_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(-19580i, 0i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -1641i), vec2<i32>(global1[_wgslsmith_index_u32(34290u, 26u)], u_input.a)), _wgslsmith_add_i32(u_input.a, global1[_wgslsmith_index_u32(19619u, 26u)]), 26263i << (var_2 % 32u)), select(vec4<i32>(u_input.b.x, 1i, global1[_wgslsmith_index_u32(u_input.c.x, 26u)], u_input.b.x), ~vec4<i32>(415i, global1[_wgslsmith_index_u32(4294967295u, 26u)], -9863i, -19879i), vec4<bool>(true, true, true, true))), max(vec4<i32>(u_input.b.x, -2147483647i, u_input.a, global1[_wgslsmith_index_u32(var_2, 26u)]) << (vec4<u32>(0u, var_2, 4294967295u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(7929i, 14706i, 29602i, u_input.a) << (vec4<u32>(39222u, 90019u, 4294967295u, 42998u) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-918f))), vec4<i32>(-func_2(vec4<i32>(-1i, -57243i, 33659i, 1i)).a.x, ~global1[_wgslsmith_index_u32(select(u_input.c.x, var_1 >> (var_1 % 32u), true), 26u)], countOneBits(46902i), u_input.a), ~vec3<u32>(~1u, 7993u, ~_wgslsmith_mult_u32(u_input.c.x, 4294967295u)));
}

