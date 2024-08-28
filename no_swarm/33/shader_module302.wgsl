struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
    d: bool,
    e: vec4<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, false, false, false), 30959i, false, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, true, false), -5103i, true, vec4<bool>(true, false, true, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, false, false, false), 62314i, true, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, true, true, false), 2147483647i, true, vec4<bool>(false, true, true, true)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, false), -14378i, false, vec4<bool>(false, false, false, false)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true), -1i, true, vec4<bool>(false, false, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), 2147483647i, true, vec4<bool>(true, false, false, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, false, false, true), 9627i, false, vec4<bool>(false, false, false, true)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, false), 1i, true, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, false, false), -36807i, false, vec4<bool>(true, false, true, false)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, false), 0i, true, vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, true, false), 19348i, true, vec4<bool>(true, false, false, false)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, false, true), i32(-2147483648), false, vec4<bool>(false, false, true, true)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), 1i, false, vec4<bool>(false, true, true, false)), Struct_1(vec3<bool>(false, false, true), vec4<bool>(true, false, true, false), 1i, false, vec4<bool>(true, true, false, false)));

var<private> global1: vec3<i32> = vec3<i32>(0i, 41233i, 4996i);

var<private> global2: array<Struct_1, 7>;

var<private> global3: i32;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, false), i32(-2147483648), false, vec4<bool>(false, true, false, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> u32 {
    global2 = array<Struct_1, 7>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-277f)), 1f, _wgslsmith_f_op_f32(-1000f - 513f)))) * vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1163f), 1131f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -533f)))));
    var var_1 = vec4<bool>(global4.b.x, !(!global4.a.x), global4.b.x, false);
    global4 = global2[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_2 = _wgslsmith_mod_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(-2147483647i, global4.c, -7021i)), -min(select(vec3<i32>(global1.x, -2147483647i, u_input.a.x), vec3<i32>(52851i, 0i, 5021i), var_1.wyy), abs(vec3<i32>(global4.c, 0i, 0i)))) >> (~u_input.b % vec3<u32>(32u));
    return 15340u;
}

fn func_2() -> Struct_2 {
    global3 = i32(-1i) * -firstTrailingBit(i32(-1i) * -46254i);
    global2 = array<Struct_1, 7>();
    global1 = _wgslsmith_sub_vec3_i32(vec3<i32>(-41678i >> (~func_3() % 32u), _wgslsmith_div_i32(~u_input.a.x, -13966i) << (4294967295u % 32u), global1.x), reverseBits(abs(max(countOneBits(vec3<i32>(0i, global4.c, -9615i)), max(vec3<i32>(global1.x, global4.c, -44452i), vec3<i32>(u_input.a.x, global1.x, global1.x))))));
    global4 = global0[_wgslsmith_index_u32(4294967295u, 15u)];
    global0 = array<Struct_1, 15>();
    return Struct_2(1000f);
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 7>();
    var var_0 = u_input.b.x;
    let var_1 = func_2();
    global4 = Struct_1(select(!global4.a, select(vec3<bool>(true, 1657u != u_input.b.x, any(vec3<bool>(global4.e.x, true, false))), vec3<bool>(any(vec4<bool>(global4.a.x, global4.a.x, global4.a.x, global4.e.x)), true, true), _wgslsmith_f_op_f32(f32(-1f) * -1615f) <= _wgslsmith_div_f32(var_1.a, var_1.a)), !global4.a), select(vec4<bool>(u_input.b.x != u_input.b.x, global4.a.x, true, !all(vec4<bool>(true, global4.b.x, true, global4.a.x))), global4.b, !(!(!global4.b))), global4.c, false, vec4<bool>(global4.a.x, any(vec4<bool>(global4.e.x & global4.d, select(true, global4.b.x, global4.e.x), any(vec2<bool>(global4.e.x, global4.b.x)), true)), true, 9477u > u_input.b.x));
    var var_2 = 29978u;
    return global0[_wgslsmith_index_u32(u_input.b.x | ~(~func_3() & ~func_3()), 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -452f;
    global4 = func_1();
    let var_1 = Struct_2(_wgslsmith_f_op_f32(var_0 + 434f));
    var var_2 = select(select(global4.a, select(global4.e.wyw, !select(vec3<bool>(true, true, global4.a.x), vec3<bool>(global4.b.x, global4.d, true), false), func_1().a), !(!global4.b.zxx)), vec3<bool>(true, _wgslsmith_sub_u32(u_input.b.x, 36666u) > 4294967295u, false), global4.e.xyy);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(firstTrailingBit(~vec4<u32>(u_input.b.x, 1653u, 1u, 16083u))), vec2<f32>(-1000f, -357f), var_1.a);
}

