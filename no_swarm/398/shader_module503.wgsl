struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(14253i, false);

var<private> global1: i32 = 1i;

var<private> global2: array<f32, 20>;

var<private> global3: array<Struct_1, 13>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32) -> vec3<i32> {
    let var_0 = _wgslsmith_div_vec2_u32(~max(vec2<u32>(1u, 1u), firstTrailingBit(vec2<u32>(1u, 1u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), 57431u >> (abs(1u) % 32u)) >> (~vec2<u32>(1u, 1u) % vec2<u32>(32u)));
    let var_1 = vec3<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 20u)]));
    global2 = array<f32, 20>();
    global3 = array<Struct_1, 13>();
    var var_2 = _wgslsmith_clamp_u32(38716u, var_0.x, var_0.x);
    return max(vec3<i32>((firstLeadingBit(global0.a) << (1u % 32u)) << (_wgslsmith_clamp_u32(4294967295u, ~var_0.x, select(var_0.x, var_0.x, true)) % 32u), -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(4143i, 21210i, arg_0), vec3<i32>(u_input.b, global0.a, u_input.b)) | -vec3<i32>(8346i, arg_0, global0.a), -(~vec3<i32>(-2147483647i, arg_0, -30910i)))), vec3<i32>(global0.a, 2147483647i >> (~var_0.x % 32u), reverseBits(i32(-1i) * -23952i)) << (_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, var_0.x, 4294967295u), ~vec3<u32>(var_0.x, var_0.x, 30305u), ~vec3<u32>(1u, 119842u, 0u)), ~vec3<u32>(var_0.x, var_0.x, var_0.x)) % vec3<u32>(32u)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec4<u32>) -> u32 {
    global1 = countOneBits(1i);
    var var_0 = ~(-1i);
    var var_1 = 26161i;
    var var_2 = vec3<i32>(~(-u_input.b), -(i32(-1i) * -40523i), 4624i) ^ select(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -3083i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(0i, -12055i))), select(u_input.a, firstTrailingBit(-2100i), arg_0), (-41649i << (arg_2.x % 32u)) | -31392i), func_3(~(2147483647i >> (arg_2.x % 32u))), all(vec3<bool>(all(vec3<bool>(arg_0, false, global0.b)), 13338i <= u_input.b, true)));
    var var_3 = firstTrailingBit(~22256u);
    return ~arg_2.x;
}

fn func_1() -> u32 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(14629u, 20u)]) + 180f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 20u)])))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(4294967295u, 20u)] * global2[_wgslsmith_index_u32(107161u, 20u)])) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global2[_wgslsmith_index_u32(~(_wgslsmith_div_u32(func_2(true, global2[_wgslsmith_index_u32(1u, 20u)], vec4<u32>(1u, 4294967295u, 51148u, 25125u)), 35592u) ^ select(_wgslsmith_dot_vec3_u32(vec3<u32>(63976u, 39856u, 1u), vec3<u32>(4294967295u, 4294967295u, 18176u)), ~4294967295u, true)), 20u)], -2457f, global2[_wgslsmith_index_u32(max(~(~53493u), _wgslsmith_dot_vec3_u32(min(~vec3<u32>(4294967295u, 72545u, 4153u), ~vec3<u32>(0u, 4958u, 0u)), max(vec3<u32>(74555u, 66575u, 0u), vec3<u32>(56753u, 0u, 1u)))), 20u)]);
    global0 = Struct_1(~(_wgslsmith_mult_i32(u_input.a, -1i) ^ -1i), global0.b);
    var var_1 = global0.b;
    global3 = array<Struct_1, 13>();
    global2 = array<f32, 20>();
    return 39165u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<f32>(1f, _wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(func_1(), 20u)])), global2[_wgslsmith_index_u32(1u, 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 20u)])))))));
    global2 = array<f32, 20>();
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(16268u << (0u % 32u), 20u)] - var_0.x) * var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -748f))), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)) * _wgslsmith_f_op_f32(sign(1601f)))) - global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(4294967295u) & _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(19019u, 1u)), ~(~1u)), 20u)]));
    var var_2 = true;
    let var_3 = firstTrailingBit(vec2<u32>(59260u, ~_wgslsmith_clamp_u32(1567u, ~26986u, ~75162u)));
    let var_4 = global3[_wgslsmith_index_u32(32259u, 13u)];
    let var_5 = Struct_1(~_wgslsmith_div_i32(_wgslsmith_mod_i32(var_4.a, var_4.a), -2147483647i), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global0.a), vec2<i32>(0i, -12885i), vec2<i32>(global0.a, var_5.a)) ^ select(-vec2<i32>(var_4.a, var_4.a), -vec2<i32>(-34356i, u_input.b), var_4.b | true), -vec2<i32>(var_4.a >> (var_3.x % 32u), var_4.a << (66815u % 32u))), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, -1i, _wgslsmith_mult_i32(45745i, _wgslsmith_mod_i32(19785i, global0.a))), func_3(_wgslsmith_div_i32(13514i, 61106i)) | vec3<i32>(_wgslsmith_add_i32(u_input.a, 2431i), global0.a, var_4.a)), vec4<i32>(var_4.a, _wgslsmith_sub_i32(5985i, firstLeadingBit(1i)), global0.a, min(~u_input.a, u_input.b)) | -abs(~vec4<i32>(2147483647i, var_5.a, -1i, var_4.a)), _wgslsmith_div_f32(_wgslsmith_div_f32(-604f, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.x, 1u, 12884u, 62358u), vec4<u32>(var_3.x, var_3.x, 1u, 4294967295u)), 3697u), 20u)]), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1117f), -751f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1466f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global2[_wgslsmith_index_u32(1u, 20u)], 361f, var_1.x) * vec4<f32>(1103f, var_1.x, 758f, -814f)))))));
}

