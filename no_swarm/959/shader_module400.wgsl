struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(true, false, false)));

var<private> global3: vec2<u32>;

var<private> global4: Struct_1 = Struct_1(vec3<bool>(false, true, true));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = global2[_wgslsmith_index_u32(~(u_input.e | countOneBits(~1u)), 10u)];
    let var_1 = max(firstLeadingBit(global3.x), firstTrailingBit(global3.x));
    let var_2 = (~min(abs(u_input.a), vec4<i32>(u_input.c.x, -2147483647i, -1707i, 6069i) >> (vec4<u32>(global3.x, 1876u, 1u, var_1) % vec4<u32>(32u))) >> (~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_1, 25364u, 1u, var_1), ~vec4<u32>(13274u, 1u, var_1, global3.x)) % vec4<u32>(32u))) | (-(~vec4<i32>(-2147483647i, -1i, 7016i, 2147483647i)) << (vec4<u32>(~0u & var_1, firstTrailingBit(~42998u), _wgslsmith_div_u32(~var_1, 4294967295u), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xy, u_input.d.yy), abs(u_input.d.xy))) % vec4<u32>(32u)));
    var var_3 = global2[_wgslsmith_index_u32(~39671u, 10u)];
    global2 = array<Struct_1, 10>();
    return -1088i;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec4<f32>) -> u32 {
    let var_0 = func_3(u_input.c.x) ^ _wgslsmith_clamp_i32(~(-1i), u_input.c.x, u_input.a.x);
    let var_1 = select(!select(!(!vec4<bool>(global4.a.x, global4.a.x, arg_0.x, false)), select(select(vec4<bool>(true, false, global1.x, false), vec4<bool>(arg_0.x, true, false, arg_1.a.x), vec4<bool>(false, true, global4.a.x, false)), !vec4<bool>(arg_0.x, false, false, arg_0.x), arg_0.x), var_0 == 1i), !vec4<bool>(arg_0.x, all(vec4<bool>(global4.a.x, arg_0.x, false, true)), global1.x, false), !select(vec4<bool>(-21956i > u_input.a.x, !global1.x, global1.x, arg_0.x), select(!vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, global4.a.x, true, false), !vec4<bool>(false, false, global4.a.x, false)), vec4<bool>(true, true, all(vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)), !global4.a.x)));
    global2 = array<Struct_1, 10>();
    return _wgslsmith_add_u32(_wgslsmith_add_u32(144936u, 1564u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(8274u, ~(~global3.x)), global3.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: u32, arg_3: vec3<u32>) -> vec2<i32> {
    global3 = _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2, 36251u), arg_3.yz ^ vec2<u32>(50802u, arg_0.x)), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_2, 19252u), arg_0.yy), reverseBits(vec2<u32>(6623u, 95052u)))), ~(~(~(vec2<u32>(22641u, 4294967295u) ^ arg_3.zz))));
    let var_0 = select(global4.a, global4.a, global4.a);
    var var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var var_2 = -28636i;
    let var_3 = select(vec2<bool>(true, true), !(!select(select(vec2<bool>(global4.a.x, false), vec2<bool>(true, global4.a.x), var_1.a.xx), vec2<bool>(false, global4.a.x), global4.a.yx)), vec2<bool>(global4.a.x, true));
    return abs(_wgslsmith_div_vec2_i32(select(vec2<i32>(-1i, ~(-11065i)), _wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(2147483647i, u_input.c.x)), u_input.a.zx << (vec2<u32>(220u, 1u) % vec2<u32>(32u))), false), vec2<i32>(1i, u_input.c.x | 2147483647i)));
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(4294967295u & global3.x, 103810u)), u_input.e, 0u), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(716f, 457f, -1004f)), vec3<f32>(-450f, 1597f, -3046f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2032f, 1000f, 1000f), vec3<f32>(-1000f, 1014f, -576f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-695f, -735f, 944f))))))), ~_wgslsmith_mult_u32(firstTrailingBit(u_input.b), ~_wgslsmith_mod_u32(global3.x, global3.x)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, func_2(global4.a.zy, Struct_1(global4.a), vec4<f32>(777f, 455f, -646f, 2254f)), ~global3.x), u_input.d), _wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.d | u_input.d, vec3<u32>(global3.x, 4294967295u, 15541u), u_input.d), u_input.d)));
    let var_1 = u_input.c.x & ~(-18844i);
    var var_2 = global2[_wgslsmith_index_u32(select(u_input.d.x, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.xy << ((vec2<u32>(u_input.b, 51599u) ^ vec2<u32>(global3.x, global3.x)) % vec2<u32>(32u)), ~(~vec2<u32>(u_input.e, 72664u))), select(reverseBits(u_input.d.xy), u_input.d.zy, global4.a.xx)), any(vec3<bool>(true, !global1.x, false))), 10u)];
    let var_3 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.a.zxz, select(-abs(vec3<i32>(17505i, -31748i, u_input.c.x)), vec3<i32>(1i, ~var_1, var_1 & u_input.c.x), global4.a)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.zw, u_input.c.xy), u_input.a.x));
    global4 = Struct_1(global4.a);
    return global0[_wgslsmith_index_u32(u_input.b, 15u)];
}

fn func_5(arg_0: vec2<u32>, arg_1: Struct_1) -> vec3<bool> {
    global1 = vec2<bool>(global4.a.x, true);
    let var_0 = select(select(!vec4<bool>(true, true, true, arg_1.a.x), select(select(vec4<bool>(false, global4.a.x, true, global1.x), select(vec4<bool>(global4.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(true, true, global1.x, false), arg_1.a.x), all(vec3<bool>(false, arg_1.a.x, global4.a.x))), vec4<bool>(all(vec2<bool>(global1.x, false)), true, any(arg_1.a.xx), true), !select(vec4<bool>(global4.a.x, true, global4.a.x, false), vec4<bool>(false, arg_1.a.x, false, false), true)), true), !vec4<bool>(any(global4.a.zy) && global1.x, true, (global1.x & global1.x) || false, global1.x), select(select(select(!vec4<bool>(global4.a.x, false, true, false), vec4<bool>(arg_1.a.x, arg_1.a.x, false, true), arg_1.a.x), select(vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(global4.a.x, true, arg_1.a.x, global4.a.x), all(arg_1.a.zy)), !func_1().a.x), !(!(!vec4<bool>(false, arg_1.a.x, global1.x, global4.a.x))), select(!(!vec4<bool>(false, false, global1.x, global1.x)), select(select(vec4<bool>(global4.a.x, false, arg_1.a.x, global1.x), vec4<bool>(false, global1.x, global1.x, global4.a.x), global4.a.x), vec4<bool>(global1.x, global4.a.x, global4.a.x, global1.x), !vec4<bool>(global4.a.x, global4.a.x, arg_1.a.x, true)), select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, arg_1.a.x, false), vec4<bool>(false, global1.x, arg_1.a.x, false), global1.x), vec4<bool>(arg_1.a.x, global4.a.x, true, arg_1.a.x), vec4<bool>(global4.a.x, true, global1.x, true)))));
    let var_1 = var_0;
    return select(!vec3<bool>(!global4.a.x, true, false), !select(vec3<bool>(arg_1.a.x | true, true, true && arg_1.a.x), arg_1.a, func_1().a), any(vec3<bool>(true, all(!global4.a.yy), global4.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(!select(!vec3<bool>(false, global1.x, global1.x), func_5(~u_input.d.zx, func_1()), !(!global4.a)));
    let var_0 = abs(~(~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.d.x, 24360u), select(4294967295u, 0u, global4.a.x), u_input.e, 1u)));
    global2 = array<Struct_1, 10>();
    var var_1 = vec2<bool>(all(select(!(!vec4<bool>(global1.x, true, global1.x, false)), !select(vec4<bool>(true, false, false, true), vec4<bool>(global1.x, true, global1.x, false), global4.a.x), select(vec4<bool>(global4.a.x, global4.a.x, true, true), vec4<bool>(true, true, global4.a.x, global1.x), select(vec4<bool>(false, global1.x, false, global1.x), vec4<bool>(false, false, global1.x, global1.x), true)))), false);
    var var_2 = 2248f;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1258f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(352f, 235f), vec2<f32>(1167f, 312f)))))));
}

