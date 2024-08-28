struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 374f;

var<private> global1: array<bool, 26>;

var<private> global2: array<u32, 31>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_3) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -878f));
}

fn func_1(arg_0: Struct_3) -> i32 {
    global2 = array<u32, 31>();
    var var_0 = arg_0.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -335f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_1(var_0.b, var_0.a), arg_0.a.b.yxw, Struct_3(Struct_1(vec4<i32>(25630i, 2147483647i, 18045i, arg_0.a.b.x), vec4<i32>(31236i, -1i, 1i, 42483i))))))))));
    let var_2 = !vec4<bool>(arg_0.a.b.x != 25535i, (u_input.b.x == abs(u_input.b.x)) | all(!vec2<bool>(false, global1[_wgslsmith_index_u32(0u, 26u)])), true, true);
    var_0 = arg_0.a;
    return reverseBits(var_0.b.x);
}

fn func_3() -> vec4<u32> {
    let var_0 = 1u;
    var var_1 = ~(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, var_0, 1u, 1u), vec4<u32>(0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(22907u, 31u)], 31u)], 55366u, global2[_wgslsmith_index_u32(1u, 31u)]), vec4<u32>(51716u, var_0, 1u, var_0)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30400u, 31u)], 31u)], 31u)], 18280u, var_0, 1u), vec4<u32>(1u, 10170u, 4294967295u, var_0), vec4<u32>(0u, 91183u, u_input.b.x, var_0)), select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0, 26u)], true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(21188u, 31u)], 26u)]), vec4<bool>(global1[_wgslsmith_index_u32(22805u, 26u)], false, global1[_wgslsmith_index_u32(var_0, 26u)], global1[_wgslsmith_index_u32(var_0, 26u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 26u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)]))) >> (abs(~vec4<u32>(0u, 19863u, 0u, global2[_wgslsmith_index_u32(0u, 31u)])) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_clamp_u32(1u, global2[_wgslsmith_index_u32(~0u, 31u)], var_0), 0u, countOneBits(1u) >> (_wgslsmith_clamp_u32(var_0, 27864u, firstLeadingBit(1u)) % 32u), 4294967295u) % vec4<u32>(32u));
    global0 = -1466f;
    let var_2 = Struct_4(Struct_1(~vec4<i32>(u_input.a, 41687i, u_input.a, _wgslsmith_clamp_i32(31857i, -1i, -2147483647i)), vec4<i32>(~abs(u_input.a), ~u_input.a, u_input.a, ~33302i)), -10799i);
    let var_3 = var_2;
    return ~vec4<u32>(_wgslsmith_div_u32(firstLeadingBit(global2[_wgslsmith_index_u32(var_0, 31u)]), u_input.b.x), ~var_1.x, 0u, 87679u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1001f, -296f, 1676f, -332f), vec4<f32>(-523f, -277f, 275f, 2161f), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], true, false))))))));
    var var_1 = Struct_3(Struct_1(_wgslsmith_div_vec4_i32(countOneBits(~vec4<i32>(-21014i, 2147483647i, -2147483647i, 1i)), min(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 2147483647i, 662i))), abs(vec4<i32>(func_1(Struct_3(Struct_1(vec4<i32>(u_input.a, -1i, u_input.a, 29055i), vec4<i32>(u_input.a, -41240i, u_input.a, u_input.a)))), -u_input.a, 1i >> (u_input.b.x % 32u), u_input.a))));
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(var_0.x)))))), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_add_i32(var_1.a.b.x, ~(i32(-1i) * -1i)) >= abs(-2147483647i)));
    var_1 = Struct_3(var_1.a);
    var var_3 = select(~(~(~(vec2<i32>(-79277i, -29637i) ^ vec2<i32>(u_input.a, var_1.a.a.x)))), abs(~var_1.a.a.zy >> (_wgslsmith_sub_vec2_u32(~u_input.b, u_input.b ^ u_input.b) % vec2<u32>(32u))), true);
    let x = u_input.a;
    s_output = StorageBuffer(func_3() & (vec4<u32>(21254u, ~1u, 53078u, _wgslsmith_dot_vec2_u32(u_input.b, u_input.b)) | ((vec4<u32>(u_input.b.x, u_input.b.x, 19437u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(141549u, 31u)], 31u)], 31u)]) ^ vec4<u32>(4294967295u, 10254u, 74864u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19824u, 31u)], 31u)])) << (vec4<u32>(global2[_wgslsmith_index_u32(u_input.b.x, 31u)], u_input.b.x, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], u_input.b.x) % vec4<u32>(32u)))), var_1.a.b, min(var_1.a.a.x, ~abs(_wgslsmith_mult_i32(37479i, var_3.x))), ~((vec4<u32>(31810u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47260u, 31u)], 31u)], global2[_wgslsmith_index_u32(17282u, 31u)], 35892u) << (vec4<u32>(u_input.b.x, global2[_wgslsmith_index_u32(150693u, 31u)], 27433u, 21715u) % vec4<u32>(32u))) >> ((vec4<u32>(u_input.b.x, 50647u, 93501u, 0u) ^ vec4<u32>(0u, u_input.b.x, 2049u, 83397u)) % vec4<u32>(32u))) | vec4<u32>(~4294967295u, ~(global2[_wgslsmith_index_u32(4294967295u, 31u)] >> (72042u % 32u)), 12257u, global2[_wgslsmith_index_u32(~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6877u, 31u)], 31u)], 31u)] << (u_input.b.x % 32u)), 31u)]));
}

