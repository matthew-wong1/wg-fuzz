struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: vec4<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 1>;

var<private> global1: i32 = -11438i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> u32 {
    global1 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(max(_wgslsmith_clamp_vec3_i32(u_input.b.yww, u_input.b.xxx, u_input.b.xxy) | (u_input.b.zwz & u_input.b.wyw), -_wgslsmith_mult_vec3_i32(u_input.b.wwz, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x))), vec3<i32>(u_input.b.x, -(-19825i ^ u_input.b.x), u_input.b.x)), vec3<i32>(_wgslsmith_div_i32(-2147483647i, u_input.b.x), select(-u_input.b.x, ~u_input.b.x, true) ^ _wgslsmith_sub_i32(u_input.b.x, 26093i), -firstTrailingBit(u_input.b.x ^ -1i)));
    global1 = abs(u_input.b.x ^ ((i32(-1i) * -u_input.b.x) >> (u_input.a.x % 32u)));
    global1 = u_input.b.x;
    global0 = array<bool, 1>();
    global0 = array<bool, 1>();
    return u_input.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: i32) -> vec3<f32> {
    var var_0 = arg_1.a;
    let var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(arg_1.e.x, _wgslsmith_mult_i32(arg_0.x, 1i), arg_2, reverseBits(_wgslsmith_mod_i32(-25125i << (arg_1.b % 32u), 29456i))), firstLeadingBit(vec4<i32>(~select(var_0.a.x, u_input.b.x, global0[_wgslsmith_index_u32(44005u, 1u)]), 5529i, _wgslsmith_clamp_i32(countOneBits(var_0.a.x), var_0.b, 1i), arg_2)));
    global1 = 1i;
    global1 = -2147483647i << ((_wgslsmith_mult_u32(abs(~u_input.c.x), 4294967295u & ~arg_1.b) & _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 28678u, 44274u), ~vec3<u32>(u_input.a.x, 1u, 4294967295u)), ~func_3())) % 32u);
    var_0 = Struct_1(var_1.wwz, 44086i, arg_1.a.c);
    return arg_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec3<f32>, arg_3: bool) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = arg_0;
    let var_2 = u_input.c;
    var_0 = !(!(!any(select(vec2<bool>(arg_3, false), vec2<bool>(true, arg_3), vec2<bool>(false, false)))));
    let var_3 = firstLeadingBit(var_2.x) ^ _wgslsmith_mod_u32(u_input.a.x, var_2.x);
    return Struct_1(vec3<i32>(5843i & var_1.b, var_1.a.x, -var_1.a.x), ~(-1i >> (reverseBits(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(43554u, 70891u))) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-466f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -308f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), -367f))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    var var_1 = arg_2.d;
    var var_2 = arg_2.b;
    return 545f;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec2<f32>) -> f32 {
    return _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_0.c)) + _wgslsmith_f_op_vec3_f32(floor(arg_0.c))), true, Struct_2(func_4(Struct_1(-u_input.b.zzw, i32(-1i) * -1i, _wgslsmith_f_op_f32(arg_2.x + -1811f)), arg_0.a.a.x, _wgslsmith_f_op_vec3_f32(func_2(u_input.b.yyy, Struct_2(arg_0.a, arg_0.b, vec3<f32>(arg_0.a.c, arg_2.x, arg_2.x), arg_0.d, vec2<i32>(4059i, -6214i)), 0i)), true), ~func_3() >> (1u % 32u), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, arg_2.x, -431f) + arg_0.c), arg_0.c)))), vec4<bool>(arg_0.d.x, true, true, true), vec2<i32>(abs(arg_0.a.a.x), select(select(-2147483647i, u_input.b.x, arg_0.d.x), 0i, arg_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 697i;
    var var_0 = 544i;
    global1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-459f * _wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.b.xyw, u_input.b.x, -1157f), 4294967295u, vec3<f32>(-676f, 1120f, -215f), vec4<bool>(global0[_wgslsmith_index_u32(409u, 1u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), vec2<i32>(43416i, 12293i)), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), vec2<f32>(-1605f, 1510f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1125f * -1052f) - _wgslsmith_f_op_f32(f32(-1f) * -2227f)))), abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(71441u << (u_input.c.x % 32u), ~14371u), _wgslsmith_mult_vec2_u32(~vec2<u32>(11536u, 10238u), vec2<u32>(0u, u_input.c.x)), ~_wgslsmith_clamp_vec2_u32(u_input.c.yz, u_input.a, u_input.c.zz))), vec4<f32>(_wgslsmith_f_op_f32(-3675f * -674f), 752f, _wgslsmith_f_op_f32(func_1(Struct_2(func_4(Struct_1(vec3<i32>(-1i, u_input.b.x, u_input.b.x), u_input.b.x, -1000f), 17397i, vec3<f32>(718f, 1000f, -1111f), true), 4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1201f, 1496f, 1000f)), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], false), -vec2<i32>(0i, -1i)), vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(26662u, 1u)], true, global0[_wgslsmith_index_u32(u_input.c.x, 1u)], global0[_wgslsmith_index_u32(35269u, 1u)])), global0[_wgslsmith_index_u32(abs(54700u), 1u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -325f)))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(Struct_2(Struct_1(u_input.b.xyz, u_input.b.x, 1769f), u_input.a.x, vec3<f32>(557f, 1225f, -425f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], true, global0[_wgslsmith_index_u32(u_input.a.x, 1u)], global0[_wgslsmith_index_u32(18584u, 1u)]), vec2<i32>(u_input.b.x, 0i)), vec2<bool>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<f32>(-1512f, -367f)))))));
}

