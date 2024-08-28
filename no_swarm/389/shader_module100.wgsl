struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: Struct_1 = Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(9673i, -69199i, 6061i, 0i), vec4<bool>(false, true, true, true));

var<private> global3: array<u32, 1> = array<u32, 1>(104u);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(301f * -397f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1266f + -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(-618f, -1000f)))))));
    global0 = array<Struct_3, 13>();
    global3 = array<u32, 1>();
    var var_1 = 14226i;
    var var_2 = (u_input.b.x & _wgslsmith_mod_u32(0u, 1u)) << (firstLeadingBit(~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, global3[_wgslsmith_index_u32(1u, 1u)], 4294967295u), vec4<u32>(13534u, global3[_wgslsmith_index_u32(64968u, 1u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)))) % 32u);
    return global3[_wgslsmith_index_u32(5011u, 1u)];
}

fn func_2() -> f32 {
    let var_0 = max(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], select(u_input.b.x, firstLeadingBit(0u), all(global2.a.xz)), u_input.b.x, abs(func_3(Struct_3(vec2<i32>(-14673i, global2.b.x), u_input.a)))) >> (abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(87553u, global3[_wgslsmith_index_u32(0u, 1u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(34430u, 1u)], 1u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)]), ~vec4<u32>(u_input.b.x, global3[_wgslsmith_index_u32(u_input.b.x, 1u)], 4294967295u, 4294967295u))) % vec4<u32>(32u)), select(vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 1u)] | 1u, 51755u, _wgslsmith_mod_u32(13284u, 4294967295u), u_input.b.x), _wgslsmith_div_vec4_u32(abs(vec4<u32>(0u, 9355u, 89594u, u_input.b.x)), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], 39247u, global3[_wgslsmith_index_u32(30266u, 1u)], 43041u) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u))), true) ^ ~(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 4294967295u, 56020u, 4294967295u)));
    global2 = Struct_1(!vec4<bool>(false, true, false, !select(global2.c.x, true, global2.c.x)), -_wgslsmith_clamp_vec4_i32(-global2.b, vec4<i32>(global2.b.x, 2147483647i, u_input.a.x & -20810i, 2147483647i), _wgslsmith_mod_vec4_i32(global2.b, vec4<i32>(global2.b.x, -11437i, u_input.a.x, -2147483647i))), global2.a);
    let var_1 = Struct_1(global2.c, global2.b, !select(vec4<bool>(!global2.c.x, select(false, global2.c.x, false), true, !global2.c.x), vec4<bool>(!global2.c.x, !global2.a.x, all(vec4<bool>(global2.c.x, false, false, global2.a.x)), global2.c.x & global2.a.x), global2.c));
    global1 = array<Struct_3, 31>();
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -945f);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-962f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -949f)))));
}

fn func_1() -> Struct_2 {
    let var_0 = ~u_input.b;
    var var_1 = vec3<i32>(abs(-31489i), ~_wgslsmith_sub_i32(global2.b.x >> (~65268u % 32u), 2147483647i >> (countOneBits(70605u) % 32u)), 0i);
    var var_2 = vec2<f32>(790f, _wgslsmith_f_op_f32(func_2()));
    var var_3 = ~(~countOneBits(_wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, global3[_wgslsmith_index_u32(0u, 1u)], var_0.x), _wgslsmith_mult_vec3_u32(var_0, vec3<u32>(var_0.x, u_input.b.x, u_input.b.x)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2033f * var_2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(3232f, var_2.x, true)))))) + vec3<f32>(var_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.x, var_2.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * var_2.x)), var_2.x));
    return Struct_2(Struct_1(select(!global2.a, vec4<bool>(any(global2.a.xxz), all(vec3<bool>(true, true, true)), true, var_2.x <= var_4.x), all(global2.c)), _wgslsmith_sub_vec4_i32(abs(global2.b) | firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i)), global2.b), vec4<bool>(global2.c.x, all(select(global2.a.yz, vec2<bool>(true, global2.c.x), false)), any(!vec2<bool>(global2.c.x, false)), true)), firstTrailingBit(_wgslsmith_add_i32(31312i, countOneBits(var_1.x))), Struct_1(global2.c, global2.b, vec4<bool>(any(vec2<bool>(false, global2.a.x)) || (global2.a.x == global2.c.x), _wgslsmith_f_op_f32(f32(-1f) * -257f) < _wgslsmith_f_op_f32(step(var_4.x, -630f)), any(!vec2<bool>(global2.a.x, global2.c.x)), any(global2.a.wyx))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global0 = array<Struct_3, 13>();
    var var_0 = global0[_wgslsmith_index_u32(4294967295u, 13u)];
    var var_1 = all(arg_0.c.a);
    var var_2 = func_1();
    let var_3 = _wgslsmith_div_vec3_i32(arg_0.c.b.wzy, ~min(var_2.a.b.xxw, (vec3<i32>(17060i, global2.b.x, -39208i) & vec3<i32>(arg_0.c.b.x, u_input.a.x, var_2.a.b.x)) | ~var_2.a.b.zzz));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.xx;
    var var_1 = func_4(func_1(), -12946i);
    var var_2 = vec3<bool>(var_1.c.x, var_1.c.x && !((global2.c.x || false) && !var_1.a.x), true);
    let var_3 = select(var_1.b.zx, max(u_input.a, select(vec2<i32>(func_1().a.b.x, ~(-2147483647i)), select(~global2.b.wz, -vec2<i32>(var_1.b.x, global2.b.x), true), !var_1.a.yy)), func_1().a.a.wz);
    var var_4 = _wgslsmith_div_i32(var_1.b.x, _wgslsmith_div_i32(-var_1.b.x, 2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~min(countOneBits(vec4<u32>(38012u, 55286u, 10673u, 74749u)), vec4<u32>(global3[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b.x, u_input.b.x, 1u)), ~select(~vec4<u32>(global3[_wgslsmith_index_u32(1u, 1u)], 11639u, 18839u, u_input.b.x), _wgslsmith_div_vec4_u32(vec4<u32>(72445u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(6824u, global3[_wgslsmith_index_u32(0u, 1u)], 67484u, 4294967295u)), vec4<bool>(global2.a.x, global2.a.x, false, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1000f)))) - -623f)), var_1.b.wz, max(~(global2.b.yxy << (u_input.b % vec3<u32>(32u))), vec3<i32>(global2.b.x, max(23493i, _wgslsmith_sub_i32(-24574i, 1i)), ~(37523i >> (global3[_wgslsmith_index_u32(u_input.b.x, 1u)] % 32u)))), ~var_0.x);
}

