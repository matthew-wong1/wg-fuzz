struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(10085u, 4294967295u, 74564u, 1u, 1u, 4294967295u, 43967u, 4294967295u, 33695u, 20942u, 4294967295u, 26718u, 17887u, 1920u, 4294967295u, 46552u, 34626u, 53361u, 24482u, 1u, 57048u, 0u, 1u, 53266u);

var<private> global1: vec2<u32>;

var<private> global2: Struct_2 = Struct_2(Struct_1(32597u, vec2<u32>(27905u, 1u), vec4<bool>(true, false, false, true), 1932f, 96314i), 49718u);

var<private> global3: vec4<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-176f - -2287f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1083f, _wgslsmith_f_op_f32(round(global2.a.d)))) + -951f)));
    global0 = array<u32, 24>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1646f, 1514f, 551f)))) - vec3<f32>(global2.a.d, -190f, -1061f)))) + vec3<f32>(global2.a.d, -630f, -424f));
    let var_2 = global2.a.c.x;
    global2 = Struct_2(Struct_1(global0[_wgslsmith_index_u32(global2.a.a, 24u)], abs(vec2<u32>(max(global0[_wgslsmith_index_u32(1u, 24u)], global0[_wgslsmith_index_u32(15979u, 24u)]), 1u)), global2.a.c, -566f, countOneBits(global2.a.e)), ~(~4294967295u));
    return ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(global2.b, global1.x), ~78472u);
}

fn func_2() -> i32 {
    var var_0 = firstLeadingBit(vec4<u32>(21584u, global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 24u)], 24u)]) | min(global1.x, u_input.a.x), 24u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_3(-vec3<i32>(global2.a.e, -43850i, 26173i)), ~global1.x >> (~global0[_wgslsmith_index_u32(66689u, 24u)] % 32u)), 24u)], firstLeadingBit(global2.a.b.x)));
    let var_1 = !(!(!global3.zxx));
    global0 = array<u32, 24>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-235f, -1449f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-248f, 474f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global2.a.d, 2203f), vec2<f32>(global2.a.d, global2.a.d))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d, global2.a.d))), global3.x)));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.d, _wgslsmith_f_op_f32(select(-709f, 393f, false)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_2.x, 1233f), vec2<f32>(var_2.x, -716f)))))), global2.a.c.zz)) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -326f)) - vec2<f32>(-373f, _wgslsmith_f_op_f32(-var_2.x))))));
    return global2.a.e;
}

fn func_1() -> vec2<u32> {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(min(2147483647i, -7512i >> (u_input.a.x % 32u)) | ~global2.a.e, ~abs(_wgslsmith_add_i32(34640i, global2.a.e))), -select(-global2.a.e, global2.a.e, all(!vec3<bool>(false, global2.a.c.x, global3.x))), _wgslsmith_div_i32(-27060i, func_2()));
    var var_1 = global2.a;
    var var_2 = -_wgslsmith_mult_vec3_i32((vec3<i32>(32951i, global2.a.e, var_0.x) | (vec3<i32>(global2.a.e, var_1.e, -2147483647i) & vec3<i32>(var_0.x, var_1.e, -35163i))) << (u_input.a.xzw % vec3<u32>(32u)), vec3<i32>(global2.a.e, ~global2.a.e, 0i));
    var var_3 = var_1.b;
    var_0 = _wgslsmith_mod_vec3_i32(vec3<i32>(func_2(), min(_wgslsmith_mult_i32(var_1.e << (4294967295u % 32u), global2.a.e ^ 21442i), -26730i), select(var_1.e, -15323i, global3.x)), ~(~(firstTrailingBit(vec3<i32>(1i, var_2.x, 2147483647i)) ^ abs(vec3<i32>(var_0.x, -1i, 1i)))));
    return vec2<u32>(~29770u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1((global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global2.b, 24u)], 1u), 24u)] | 1u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(2769u, global0[_wgslsmith_index_u32(global2.a.b.x, 24u)], u_input.a.x, 1u), select(vec4<u32>(global1.x, global2.b, global2.b, u_input.a.x), vec4<u32>(12849u, global2.b, global1.x, 1u), global2.a.c)), func_1(), !(!vec4<bool>(global3.x, false, false, false)), -103f, 2147483647i), ~(~1u));
    let var_1 = Struct_2(var_0.a, 0u);
    var var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-26426i, -var_0.a.e, -1i, _wgslsmith_div_i32(1i, 1i)), vec4<i32>(_wgslsmith_sub_i32(firstLeadingBit(-2147483647i), ~var_1.a.e) ^ -2147483647i, var_1.a.e, 17055i, var_0.a.e));
    var var_3 = abs(-1i);
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

