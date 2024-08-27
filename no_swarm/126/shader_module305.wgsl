struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 1> = array<vec4<i32>, 1>(vec4<i32>(1i, -4509i, -1i, 1i));

var<private> global1: Struct_4;

var<private> global2: array<Struct_3, 24>;

var<private> global3: array<u32, 4> = array<u32, 4>(0u, 43129u, 0u, 43376u);

var<private> global4: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = -1i;
    global1 = Struct_4(global4.b);
    let var_1 = global4.b.a;
    global0 = array<vec4<i32>, 1>();
    var var_2 = Struct_4(global4.b);
    return _wgslsmith_f_op_f32(global1.a.a.b.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.b.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), 1f))));
}

fn func_2() -> vec3<f32> {
    var var_0 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~4294967295u), abs(~abs(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)])), 0u) << (_wgslsmith_mult_u32(firstTrailingBit(u_input.a.x), ~abs(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(0u, 4u)], 0u))) % 32u), 4u)], 24u)];
    global2 = array<Struct_3, 24>();
    global1 = Struct_4(Struct_2(Struct_1(vec4<f32>(-662f, _wgslsmith_div_f32(var_0.b.a.a.x, 492f), -1458f, _wgslsmith_f_op_f32(f32(-1f) * -250f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(459f, -2122f, -223f, var_0.b.a.b.x), vec4<f32>(global4.b.a.b.x, global1.a.a.a.x, -645f, -303f)) + global4.b.a.a))));
    let var_1 = Struct_4(global4.b);
    var var_2 = Struct_4(Struct_2(global4.b.a));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_3(1241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-875f)), -1673f, !var_0.a.x))), _wgslsmith_f_op_f32(floor(global1.a.a.b.x))));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 9605i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(653f - _wgslsmith_f_op_f32(178f * 1351f))) + 1025f));
    var var_2 = !global4.a.x | true;
    var var_3 = ~_wgslsmith_sub_vec2_u32(firstLeadingBit(firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.a.ww, u_input.a.zy))), _wgslsmith_mod_vec2_u32(u_input.a.yw, ~(~u_input.a.wz)));
    var var_4 = abs(vec4<i32>(50009i, _wgslsmith_div_i32(var_0, -32249i) >> (reverseBits(var_3.x) % 32u), _wgslsmith_sub_i32(~(-4625i), firstTrailingBit(var_0 >> (0u % 32u))), i32(-1i) * -2147483647i));
    return global4.b;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    global1 = Struct_4(func_4(global2[_wgslsmith_index_u32(~(firstTrailingBit(41840u) >> (min(u_input.a.x, 0u) % 32u)), 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global1.a.a.b.yzx)) * global1.a.a.b.xyw), _wgslsmith_f_op_vec3_f32(func_2()), global4.b));
    global1 = Struct_4(Struct_2(global4.b.a));
    var var_0 = func_4(global2[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~48105u, 1u, u_input.a.x) << (firstLeadingBit(~global3[_wgslsmith_index_u32(0u, 4u)]) % 32u)), 24u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(778f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.a.a.x, -879f)) + global4.b.a.b.x), global1.a.a.a.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.b.a.a.wxz) - _wgslsmith_f_op_vec3_f32(sign(global1.a.a.a.zxy))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global4.b.a.a.x, 106f, -1731f), global1.a.a.a.yzy)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-global1.a.a.a.wyz)))))), func_4(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 30747u, global3[_wgslsmith_index_u32(u_input.a.x, 4u)]), vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4294967295u, u_input.a.x, 0u), u_input.a), abs(vec4<u32>(38326u, global3[_wgslsmith_index_u32(53706u, 4u)], global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(16230u, 4u)]))), 24u)], global1.a.a.b.wzz, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1f, -110f, _wgslsmith_f_op_f32(abs(-1295f))))), func_4(global2[_wgslsmith_index_u32(~1u, 24u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(458f, -352f, global1.a.a.b.x)) - _wgslsmith_f_op_vec3_f32(-global1.a.a.b.wwz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4.b.a.a.x, -976f, -1000f) + vec3<f32>(global4.b.a.a.x, -1800f, global1.a.a.a.x)), _wgslsmith_f_op_vec3_f32(-global1.a.a.a.wzy)), Struct_2(func_4(Struct_3(vec2<bool>(true, false), Struct_2(global4.b.a)), global1.a.a.a.yxw, vec3<f32>(global4.b.a.a.x, -1059f, -1000f), Struct_2(Struct_1(vec4<f32>(global1.a.a.a.x, global4.b.a.a.x, global1.a.a.b.x, -379f), vec4<f32>(-1013f, global4.b.a.a.x, global1.a.a.b.x, global4.b.a.a.x)))).a))));
    var_0 = func_4(global2[_wgslsmith_index_u32(1u, 24u)], _wgslsmith_f_op_vec3_f32(global1.a.a.a.yxz + global4.b.a.a.yyw), global1.a.a.a.xzz, func_4(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(max(_wgslsmith_clamp_u32(0u, firstLeadingBit(0u), _wgslsmith_div_u32(1u, 4294967295u)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], 4u)], 1u, 0u, 111805u), u_input.a), 4u)], 0u), 4u)]), 4u)], 24u)], _wgslsmith_f_op_vec3_f32(select(global1.a.a.b.xww, _wgslsmith_f_op_vec3_f32(-var_0.a.a.zwy), !all(arg_0.zy))), global4.b.a.a.ywx, Struct_2(var_0.a)));
    var var_1 = arg_0;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(var_0.a.b.x, 1149f, true)), _wgslsmith_f_op_f32(global4.b.a.a.x + -479f), _wgslsmith_f_op_f32(step(2095f, var_0.a.a.x)), _wgslsmith_f_op_f32(-global1.a.a.a.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global4.b.a.b + func_4(Struct_3(global4.a, Struct_2(Struct_1(var_0.a.b, vec4<f32>(-1342f, 642f, 892f, var_0.a.b.x)))), global4.b.a.b.zwx, vec3<f32>(global1.a.a.b.x, var_0.a.a.x, var_0.a.a.x), Struct_2(global1.a.a)).a.b), vec4<f32>(global4.b.a.b.x, _wgslsmith_f_op_f32(floor(global1.a.a.b.x)), -1426f, -1093f), !vec4<bool>(false, global4.a.x, var_1.x, global4.a.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_1(!vec3<bool>(true || global4.a.x, true, true && global4.a.x)));
    let var_1 = select(8201i << (_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 4u)], _wgslsmith_dot_vec2_u32(u_input.a.xx, vec2<u32>(u_input.a.x, 19176u))) % 32u), ~(-2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-606f - var_0.a.a.b.x) - 2147f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.a.a.a.x, -440f), var_0.a.a.a.x))));
    var var_2 = u_input.a.wzx;
    var var_3 = reverseBits(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-43209i, 19942i, 1i), vec3<i32>(51679i, var_1, 2147483647i), vec3<bool>(false, global4.a.x, false)), select(vec3<i32>(47179i, -1i, var_1), vec3<i32>(2147483647i, var_1, 0i), vec3<bool>(global4.a.x, global4.a.x, global4.a.x))) & vec3<i32>(_wgslsmith_mod_i32(-360i, -1i), 1i, ~var_1), ~vec3<i32>(0i, -41763i, -1i)));
    var var_4 = var_2.x >> ((var_2.x ^ _wgslsmith_dot_vec3_u32(~_wgslsmith_mod_vec3_u32(u_input.a.xzx, u_input.a.wxx), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(11154u, 1789u), var_2.xx), u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 4294967295u)))) % 32u);
    var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(0u, 4u)], ~(var_2.x << (40308u % 32u)), ~firstLeadingBit(4294967295u)) >> (~vec3<u32>(reverseBits(26529u), abs(22934u), 1u) % vec3<u32>(32u)), select(~select(select(vec3<u32>(1u, u_input.a.x, u_input.a.x), vec3<u32>(42870u, u_input.a.x, global3[_wgslsmith_index_u32(61584u, 4u)]), vec3<bool>(true, global4.a.x, false)), u_input.a.wyx << (vec3<u32>(global3[_wgslsmith_index_u32(35991u, 4u)], 0u, 1u) % vec3<u32>(32u)), vec3<bool>(global4.a.x, global4.a.x, global4.a.x)), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 120919u, ~4294967295u), ~vec3<u32>(4294967295u, var_2.x, var_2.x)), any(global4.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.x);
}

