struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(27578u, 49962u, 50891u, 7797u), vec4<u32>(1u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(13654u, 21858u, 0u, 4294967295u), vec4<u32>(42654u, 4294967295u, 45441u, 1u), vec4<u32>(12064u, 0u, 4294967295u, 1u), vec4<u32>(34608u, 104707u, 21797u, 1u), vec4<u32>(4294967295u, 1u, 55389u, 1u), vec4<u32>(5132u, 4294967295u, 28114u, 4294967295u), vec4<u32>(4294967295u, 15761u, 0u, 21231u), vec4<u32>(0u, 5029u, 4294967295u, 28859u), vec4<u32>(34014u, 16963u, 4294967295u, 1u), vec4<u32>(10378u, 1u, 2207u, 4294967295u), vec4<u32>(58392u, 0u, 2011u, 1u), vec4<u32>(20488u, 1u, 37166u, 4294967295u));

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: vec4<i32>;

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: u32) -> i32 {
    global1 = !(!select(select(vec3<bool>(true, global3.a.x, global1.x), select(global3.a.zzx, global3.a.zxx, global3.a.x), global2.x != 2147483647i), !(!vec3<bool>(false, global3.a.x, global1.x)), true));
    global1 = global3.a.wxw;
    let var_0 = _wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(~(0u >> (0u % 32u)) & arg_2, 14u)], ~(reverseBits(global0[_wgslsmith_index_u32(arg_0 | 0u, 14u)]) | global0[_wgslsmith_index_u32(~9072u, 14u)]));
    global1 = vec3<bool>(!any(global1.zx), true, any(select(select(select(vec4<bool>(global1.x, global1.x, global1.x, global3.a.x), vec4<bool>(global3.a.x, global3.a.x, global3.a.x, global1.x), global3.a), !vec4<bool>(global1.x, true, true, global3.a.x), true), select(!vec4<bool>(true, global3.a.x, false, global3.a.x), vec4<bool>(global3.a.x, global1.x, global1.x, true), global1.x), select(any(global1.zx), false, 81129u < var_0.x))));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(727f, 694f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-380f, 1040f))) - _wgslsmith_f_op_f32(-551f + _wgslsmith_f_op_f32(253f + -579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1398f) + _wgslsmith_f_op_f32(sign(1000f))) + -198f))));
    return min(~_wgslsmith_add_i32(global2.x, 23401i), 0i);
}

fn func_2() -> Struct_2 {
    var var_0 = !global1.zx;
    let var_1 = u_input.a.x;
    global1 = global3.a.wzz;
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(615f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1073f) - _wgslsmith_f_op_f32(abs(523f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2078f, _wgslsmith_f_op_f32(-1065f + 1325f)))));
    global2 = min(vec4<i32>(global2.x, func_3(u_input.b, global2.ywx, ~4294967295u), func_3(_wgslsmith_mult_u32(~27577u, var_1 ^ var_1), global2.zww, _wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.b, 1u, 147060u))), -global2.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(-3634i, ~global2.x, -2147483647i, _wgslsmith_add_i32(0i, 1i)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, -6051i, global2.x, global2.x), -vec4<i32>(global2.x, global2.x, global2.x, global2.x))));
    return Struct_2(!select(select(!vec4<bool>(global1.x, false, global3.a.x, global3.a.x), global3.a, select(vec4<bool>(true, global3.a.x, global1.x, true), global3.a, global3.a.x)), global3.a, !vec4<bool>(global3.a.x, true, true, true)));
}

fn func_1(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = func_2();
    let var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1044f);
    global0 = array<vec4<u32>, 14>();
    var var_3 = max(reverseBits(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(global2.x, 2147483647i, global2.x, 2782i), vec4<i32>(-54451i, -2147483647i, -1i, global2.x)))), (vec4<i32>(global2.x, firstLeadingBit(-8195i), global2.x, _wgslsmith_clamp_i32(0i, -2147483647i, -31625i)) << (vec4<u32>(u_input.b, firstTrailingBit(67263u), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(38475u, 15817u), vec2<u32>(9047u, 51521u))) % vec4<u32>(32u))) ^ ~(~(-vec4<i32>(global2.x, global2.x, global2.x, global2.x))));
    return Struct_2(var_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_1(global3.a);
    let var_0 = Struct_2(vec4<bool>(select(false, false, select(any(global3.a.wwx), true, true)), true & !all(vec4<bool>(global1.x, global1.x, global3.a.x, global3.a.x)), global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(777f))) != _wgslsmith_f_op_f32(trunc(372f))));
    let var_1 = var_0;
    let var_2 = Struct_2(!vec4<bool>(true, !global3.a.x, global1.x, !all(vec2<bool>(global3.a.x, var_0.a.x))));
    let var_3 = (_wgslsmith_div_u32(u_input.b, ~55696u) >> (~firstLeadingBit(u_input.b) % 32u)) | (u_input.b >> (~(~u_input.a.x) % 32u));
    var var_4 = true;
    var_4 = false;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(i32(-1i) * -global2.x, global2.x, global2.x, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(global2.x, global2.x, -2147483647i, global2.x), vec4<i32>(2147483647i, 2682i, global2.x, 1i), var_1.a.x), min(vec4<i32>(7062i, global2.x, 3091i, global2.x), vec4<i32>(global2.x, global2.x, global2.x, 1i)))), 0u);
}

