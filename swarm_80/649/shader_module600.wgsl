struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, true, false), vec2<i32>(0i, 0i), 0u, i32(-2147483648), 4294967295u);

var<private> global2: array<Struct_1, 28>;

var<private> global3: i32 = -6109i;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<bool>(true, true, false, false), vec2<i32>(27572i, i32(-2147483648)), 1u, 23658i, 28273u), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(46007i, 21537i), 4572u, 2147483647i, 0u), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(9767i, 61331i), 1u, 1i, 48186u), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-2663i, i32(-2147483648)), 4294967295u, -8172i, 1u), Struct_1(vec4<bool>(false, true, false, true), vec2<i32>(22292i, 366i), 1u, i32(-2147483648), 4294967295u), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(25073i, 0i), 34638u, -1i, 369u), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(-17963i, 0i), 4294967295u, 2147483647i, 4294967295u), Struct_1(vec4<bool>(true, false, true, false), vec2<i32>(-2668i, 45884i), 22127u, -73245i, 29711u), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(1i, 934i), 39727u, 5672i, 22305u), Struct_1(vec4<bool>(false, false, false, false), vec2<i32>(-48673i, -8621i), 21541u, 0i, 0u), Struct_1(vec4<bool>(false, true, true, true), vec2<i32>(2147483647i, -33590i), 4294967295u, 67125i, 1317u), Struct_1(vec4<bool>(true, false, true, true), vec2<i32>(0i, 2054i), 1u, -38685i, 77289u), Struct_1(vec4<bool>(true, false, false, false), vec2<i32>(-14237i, -12937i), 4294967295u, -15951i, 0u), Struct_1(vec4<bool>(false, false, false, true), vec2<i32>(2147483647i, 11071i), 1u, -28773i, 16690u), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(1i, -1i), 0u, 49426i, 1u));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> i32 {
    let var_0 = vec4<i32>(_wgslsmith_div_i32((firstTrailingBit(global1.b.x) << (~global1.e % 32u)) ^ _wgslsmith_dot_vec2_i32(-global1.b, global1.b), u_input.d), -2709i, _wgslsmith_sub_i32(3823i, -firstTrailingBit(i32(-1i) * -14789i)), firstLeadingBit(u_input.d));
    var var_1 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(30161u), global1.c, u_input.b.x), 15u)];
    global4 = array<Struct_1, 15>();
    return var_0.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = ~(global1.e << (firstLeadingBit(~1u | ~u_input.c) % 32u));
    var var_1 = arg_1.x;
    var var_2 = global2[_wgslsmith_index_u32(~67601u, 28u)];
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1308f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -429f), 2805f, var_2.a.x)))))));
    var var_3 = false;
    return vec2<i32>(var_2.d, _wgslsmith_sub_i32(func_3(u_input.d > (global1.b.x ^ -1i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(284f, -748f, -991f)), vec3<f32>(-292f, -1000f, -923f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1392f, -1308f)) * -1357f)), ~firstTrailingBit(1i)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = vec2<i32>(-11717i, 0i);
    global1 = Struct_1(vec4<bool>(false, global1.a.x, global1.a.x, false), _wgslsmith_clamp_vec2_i32(func_2(select(global1.a.yw, vec2<bool>(global1.a.x, true), global1.a.x & true), vec3<bool>(true, true, true)), var_0, global1.b), 4294967295u | ~(~(~arg_0)), var_0.x, global1.c);
    var var_1 = 4294967295u;
    var var_2 = ~(vec4<u32>(_wgslsmith_clamp_u32(global1.c, 51106u, 0u), firstLeadingBit(u_input.b.x), u_input.a, global1.c ^ arg_0) >> (~min(vec4<u32>(1u, u_input.c, 1u, arg_0), vec4<u32>(38140u, u_input.a, 1u, u_input.c)) % vec4<u32>(32u))) & abs(~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_0, global1.c, 4294967295u), vec4<u32>(u_input.a, 34503u, u_input.b.x, u_input.b.x)) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 0u, arg_0, arg_0), vec4<u32>(global1.e, u_input.c, 1u, 145606u), vec4<u32>(arg_0, global1.c, 4294967295u, u_input.a)) % vec4<u32>(32u))));
    let var_3 = u_input.d;
    return Struct_1(select(global1.a, !(!(!global1.a)), global1.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.d, u_input.d, var_3), vec3<i32>(global1.d, global1.b.x, 21817i)), _wgslsmith_mod_i32(u_input.d, u_input.d)) ^ (global1.b | global1.b), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global1.d, var_0.x, -42018i), _wgslsmith_mult_vec4_i32(vec4<i32>(var_3, 0i, var_0.x, global1.b.x), vec4<i32>(-14590i, u_input.d, var_3, u_input.d))), 0i), global1.b), 129860u, -42024i, 15007u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a;
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-522f + -458f))))), 2272f);
    global1 = func_1(~(~7348u));
    let var_2 = 4923i & u_input.d;
    var var_3 = Struct_1(!vec4<bool>(global1.a.x, !(global1.b.x >= 3510i), 801f == _wgslsmith_f_op_f32(var_1 * var_1), true), global1.b, countOneBits(_wgslsmith_mod_u32(abs(37203u), ~(~global1.e))), abs(firstLeadingBit(-2147483647i)), 1u);
    let var_4 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(816f, -203f) + vec2<f32>(var_1, var_1)), vec2<f32>(-1463f, -164f)))))), max(global1.e, min(0u, _wgslsmith_clamp_u32(var_4, 8559u, u_input.a))) << (1u % 32u), 897f, -2234f);
}

