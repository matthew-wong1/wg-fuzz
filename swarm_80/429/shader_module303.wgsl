struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28>;

var<private> global1: array<bool, 20> = array<bool, 20>(true, false, false, true, false, false, false, false, false, false, true, false, true, true, true, false, true, false, true, true);

var<private> global2: array<vec3<u32>, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    var var_0 = vec2<bool>(global1[_wgslsmith_index_u32(29292u, 20u)], global1[_wgslsmith_index_u32(~(~15701u), 20u)]);
    var var_1 = u_input.d.x;
    var var_2 = Struct_2(_wgslsmith_mod_u32(u_input.c.x, ~abs(u_input.a.x) << (u_input.a.x % 32u)));
    return var_2.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = ~vec3<u32>(firstTrailingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(47634u, 41807u), arg_2.c)), arg_1, _wgslsmith_dot_vec2_u32(~(arg_0 ^ vec2<u32>(arg_0.x, arg_0.x)), firstLeadingBit(vec2<u32>(arg_2.c, arg_1) | vec2<u32>(arg_0.x, arg_0.x))));
    global1 = array<bool, 20>();
    global1 = array<bool, 20>();
    let var_1 = select(~global2[_wgslsmith_index_u32(arg_0.x, 20u)], u_input.a, global1[_wgslsmith_index_u32(~(~(arg_0.x | arg_1)), 20u)] && (_wgslsmith_dot_vec4_i32(min(global0[_wgslsmith_index_u32(var_0.x, 28u)], vec4<i32>(arg_2.b.x, u_input.d.x, arg_2.b.x, arg_2.b.x)), ~vec4<i32>(arg_2.b.x, arg_2.a.x, -1i, u_input.d.x)) > 2147483647i));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(select(var_1, vec3<u32>(arg_1, 4294967295u, arg_2.c), vec3<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 20u)], true)) << (reverseBits(vec3<u32>(61613u, arg_2.c, 68898u)) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(arg_0.x, 1u), arg_1 & 4294967295u), 1u, ~1u)), ~(vec3<u32>(1u, 30488u | u_input.b.x, _wgslsmith_add_u32(arg_1, arg_2.c)) << (vec3<u32>(~var_0.x, u_input.a.x, ~u_input.c.x) % vec3<u32>(32u))));
}

fn func_2() -> Struct_3 {
    global2 = array<vec3<u32>, 20>();
    let var_0 = Struct_3(Struct_2(func_4(u_input.c, ~func_3(vec4<f32>(945f, 745f, 2376f, 2585f)), Struct_1(vec2<i32>(1158i, 52888i) | vec2<i32>(7750i, u_input.d.x), max(u_input.d, vec2<i32>(71950i, -6106i)), 0u << (u_input.a.x % 32u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(529f, -551f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-339f, -811f))))))), vec2<i32>(u_input.d.x, 0i), Struct_1(min(~vec2<i32>(u_input.d.x, u_input.d.x), -vec2<i32>(u_input.d.x, u_input.d.x)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(74155u, 25076u), vec2<u32>(7802u, 57063u)), u_input.a.yx) % vec2<u32>(32u)), countOneBits(_wgslsmith_sub_vec2_i32(u_input.d, max(u_input.d, u_input.d))), u_input.b.x));
    let var_1 = i32(-1i) * -4401i;
    global1 = array<bool, 20>();
    global2 = array<vec3<u32>, 20>();
    return Struct_3(Struct_2(~0u), _wgslsmith_f_op_vec2_f32(select(var_0.b, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) * _wgslsmith_f_op_vec2_f32(-var_0.b)))), !vec2<bool>(global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(~var_0.d.c, 20u)]))), max((~var_0.c & vec2<i32>(var_0.d.a.x, -48592i)) & vec2<i32>(u_input.d.x, _wgslsmith_mod_i32(var_1, 22875i)), _wgslsmith_mult_vec2_i32(firstTrailingBit(abs(vec2<i32>(-48240i, -2147483647i))), firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, var_1), vec2<i32>(0i, var_0.c.x))))), Struct_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(-1i, 0i), _wgslsmith_mod_vec2_i32(~u_input.d, select(vec2<i32>(var_0.c.x, -1i), var_0.c, vec2<bool>(false, true)))), reverseBits(-(~vec2<i32>(1i, 49735i))), ~0u));
}

fn func_1() -> vec4<u32> {
    global2 = array<vec3<u32>, 20>();
    var var_0 = vec3<bool>(true, false, true != !global1[_wgslsmith_index_u32(reverseBits(0u), 20u)]);
    var var_1 = func_2();
    global2 = array<vec3<u32>, 20>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-782f, func_2().b.x, -366f));
    return ~_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(var_1.d.c, 87991u, u_input.a.x, 4294967295u)), select(vec4<u32>(var_1.a.a, 45482u, 4610u, var_1.a.a), vec4<u32>(41386u, u_input.b.x, 1u, 26290u), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], false, var_0.x)) << ((vec4<u32>(var_1.d.c, 7567u, 1u, var_1.d.c) ^ vec4<u32>(1u, var_1.a.a, u_input.a.x, 0u)) % vec4<u32>(32u))), vec4<u32>(~4294967295u, 71527u ^ var_1.a.a, 90165u ^ u_input.b.x, abs(9202u)) ^ vec4<u32>(~var_1.d.c, ~var_1.a.a, u_input.a.x, ~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = _wgslsmith_mult_vec4_i32(global0[_wgslsmith_index_u32(4294967295u, 28u)], firstTrailingBit(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -62717i) | global0[_wgslsmith_index_u32(u_input.c.x, 28u)]) & (vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, 55222i, 4301i, -10057i))) << (vec4<u32>(~min(firstTrailingBit(u_input.c.x), u_input.a.x), u_input.b.x, (u_input.c.x | max(76088u, u_input.c.x)) ^ ~0u, 79021u ^ u_input.b.x) % vec4<u32>(32u));
    let var_2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, 44501u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), u_input.a)), vec4<u32>(u_input.b.x, 38367u, ~(~0u), ~u_input.b.x & _wgslsmith_div_u32(u_input.c.x, 7169u))) & firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(2660u, 0u, ~u_input.b.x, ~u_input.c.x), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.c.x, u_input.a.x, 32403u, 4294967295u), func_1()), ~(~vec4<u32>(u_input.a.x, u_input.b.x, u_input.c.x, 1u))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(171f * _wgslsmith_f_op_f32(select(func_2().b.x, -1356f, true))));
    let var_4 = ~(-21015i);
    var_1 = vec4<i32>(select(_wgslsmith_mult_i32(var_1.x, -51768i), u_input.d.x, false), var_1.x, min(_wgslsmith_div_i32(-u_input.d.x, i32(-1i) * -2147483647i), _wgslsmith_sub_i32(1i, var_4)), _wgslsmith_add_i32(u_input.d.x ^ reverseBits(-16024i), 2147483647i));
    let var_5 = !(!vec4<bool>(all(select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 20u)], global1[_wgslsmith_index_u32(28009u, 20u)], global1[_wgslsmith_index_u32(61538u, 20u)]), vec3<bool>(false, true, global1[_wgslsmith_index_u32(var_2.x, 20u)]), false)), !global1[_wgslsmith_index_u32(u_input.b.x ^ 37526u, 20u)], _wgslsmith_add_u32(u_input.a.x, u_input.b.x) < func_3(vec4<f32>(-1164f, 226f, -1000f, 1508f)), global1[_wgslsmith_index_u32(71393u, 20u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1328f, 610f, -2083f, 272f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-769f, 662f, -571f, -1731f) - vec4<f32>(-488f, -379f, -1181f, 1551f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-551f, -158f, -1769f, 1147f))))), var_2.wzx);
}

