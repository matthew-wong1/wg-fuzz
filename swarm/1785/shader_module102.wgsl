struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 26>;

var<private> global2: array<u32, 15> = array<u32, 15>(0u, 4294967295u, 28356u, 1u, 4294967295u, 51028u, 21007u, 0u, 4294967295u, 16792u, 12761u, 4294967295u, 67081u, 4294967295u, 75444u);

var<private> global3: Struct_2 = Struct_2(59662i, Struct_1(-1168f, vec3<i32>(2147483647i, 0i, -1i)), 1347f);

var<private> global4: f32 = -406f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = false;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32((_wgslsmith_add_u32(22625u, 1u) & global2[_wgslsmith_index_u32(u_input.a.x, 15u)]) >> ((u_input.b >> (~4294967295u % 32u)) % 32u), 26u)])));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(4294967295u, 26u)]))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.c), 152f))), !any(vec4<bool>(false, true, false, true)))), global3.b.b);
    global1 = array<f32, 26>();
    var_1 = _wgslsmith_f_op_f32(590f * _wgslsmith_div_f32(global3.b.a, _wgslsmith_f_op_f32(-global3.c)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1130f)));
}

fn func_2() -> Struct_1 {
    global3 = Struct_2(reverseBits(22118i), Struct_1(553f, vec3<i32>(~(-2147483647i), 5381i << (u_input.a.x % 32u), ~global3.b.b.x) ^ _wgslsmith_mod_vec3_i32(~global3.b.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-22889i, 1i, 36281i), vec3<i32>(1i, global3.a, 0i)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(448f + _wgslsmith_f_op_f32(758f * global1[_wgslsmith_index_u32(51166u, 26u)])), 1f)))));
    var var_0 = -2147483647i;
    global3 = Struct_2(-1i, Struct_1(_wgslsmith_f_op_f32(func_3()), firstLeadingBit(vec3<i32>(-1i) * -vec3<i32>(global3.a, global3.a, 2147483647i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(362f))));
    global0 = -15617i;
    let var_1 = u_input.a;
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), global3.b.a)), global3.b.b ^ vec3<i32>(~global3.a, global3.a ^ 12642i, 1i));
}

fn func_1() -> Struct_1 {
    global4 = -774f;
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(max(0u, 0u), 26u)] * _wgslsmith_f_op_f32(1617f * global3.c)))), global3.b.a));
    global3 = Struct_2(1i, func_2(), global1[_wgslsmith_index_u32(u_input.b, 26u)]);
    global3 = Struct_2(58829i, func_2(), var_0.x);
    let var_1 = !(!(!vec3<bool>(all(vec4<bool>(false, true, true, false)), global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(26213u, 15u)], 26u)] >= var_0.x, any(vec2<bool>(false, false)))));
    return Struct_1(_wgslsmith_f_op_f32(-var_0.x), global3.b.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> StorageBuffer {
    let var_0 = arg_1.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1349f, 535f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(658f * -1199f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -370f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2666f + 676f))))));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 26u)] * -1000f), _wgslsmith_f_op_f32(-arg_3)));
    global0 = -(func_1().b.x ^ ~(arg_1.a & arg_1.b.b.x)) | -1752i;
    var var_3 = _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.b.b.x, 32028i), (_wgslsmith_div_vec2_i32(vec2<i32>(-29933i, 2147483647i), -global3.b.b.yy) ^ arg_0.zy) | -(-var_0.b.xz | abs(global3.b.b.xx)));
    return StorageBuffer(abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_2, 1u, arg_2), ~u_input.a), ~4294967295u, 4294967295u, arg_2)), ~(i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(876f, global3.c, var_0.a, -2172f)))) + vec4<f32>(_wgslsmith_f_op_f32(166f * global1[_wgslsmith_index_u32(0u, 26u)]), _wgslsmith_f_op_f32(floor(arg_3)), -710f, _wgslsmith_f_op_f32(floor(global3.b.a)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 772f, global3.c, 1944f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global1[_wgslsmith_index_u32(u_input.b, 26u)], -1975f, arg_1.b.a)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(211f, -773f, 562f, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(525u, 15u)], 26u)])))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0.a, global3.c, var_1.x, 744f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.a, var_0.a, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 26u)], 1295f), vec4<f32>(var_1.x, global3.b.a, arg_1.c, var_1.x), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), false))), !select(true, true, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(19205u, 15u)], 26u)], -726f, 368f, arg_3))), vec4<f32>(global3.c, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a.x, 15u)], 26u)], arg_3, var_0.a))))))), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(923u, 15u)], 18663u), _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(1875u, 15u)], arg_2, 0u)), 10356u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(1u, ~1u, 85630u, 1u);
    let var_1 = global1[_wgslsmith_index_u32(~(~(~u_input.b)), 26u)];
    global2 = array<u32, 15>();
    let var_2 = Struct_1(-543f, global3.b.b);
    let var_3 = ~(~u_input.a.zy);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
    let x = u_input.a;
    s_output = func_4(vec4<i32>(-var_2.b.x, var_2.b.x, -18040i, -_wgslsmith_div_i32(firstTrailingBit(23687i), 16968i)), Struct_2(-35796i, func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(386f + var_4) + _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(8680u, 26u)] - global1[_wgslsmith_index_u32(24596u, 26u)])))), firstTrailingBit(56275u) & select(4294967295u, global2[_wgslsmith_index_u32(2381u, 15u)], true), 917f);
}

