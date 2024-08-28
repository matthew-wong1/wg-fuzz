struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: vec2<u32>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: bool) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(global1.x, 22u)];
    var var_1 = vec4<u32>(global1.x, ~_wgslsmith_add_u32(firstLeadingBit(global1.x), 21661u), 4294967295u >> (~min(4294967295u, global1.x) % 32u), ~1u);
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(412f, var_0.a.x, var_0.a.x), _wgslsmith_div_vec3_f32(vec3<f32>(-1093f, var_0.a.x, -1516f), var_0.a), var_1.x <= 0u))), var_0.a))));
    let var_3 = var_0.a.x;
    var_0 = Struct_1(var_0.a);
    return 30942u;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_1) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.a.x), arg_3.a.x, any(arg_1.a.yyz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, arg_3.a.x, arg_1.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_3.a.x, -820f, arg_1.a.x)))))))));
}

fn func_1(arg_0: i32, arg_1: u32) -> Struct_3 {
    let var_0 = vec2<bool>(71573u >= _wgslsmith_sub_u32(arg_1, arg_1), false && (true | select(true, true, 3391u > global1.x)));
    global1 = _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, _wgslsmith_div_u32(arg_1, ~func_2(var_0.x))), vec2<u32>(74439u, ~global1.x));
    let var_1 = 28693i;
    var var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(15817u, Struct_2(vec4<bool>(var_0.x, false, true, var_0.x)), select(var_0.x, false, var_0.x), Struct_1(vec3<f32>(-575f, 1199f, -1000f)))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1709f, 584f, -2000f)))))))));
    let var_3 = Struct_4((false && var_0.x) && all(select(vec3<bool>(var_0.x, true, true), vec3<bool>(true, true, true), true)), Struct_2(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, 559f, 355f) * vec3<f32>(-1000f, -1637f, -751f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, var_2.x, var_2.x)))))), Struct_2(vec4<bool>(var_0.x, var_0.x, false, var_0.x)));
    return Struct_3(~_wgslsmith_mult_u32(global1.x, ~global1.x), global0[_wgslsmith_index_u32(arg_1, 22u)], max(vec3<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(func_2(true), 4294967295u)), countOneBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(25711u, 16269u, 38196u), vec3<u32>(14925u, arg_1, 27933u)))), ~select(select(u_input.a.xyx, abs(u_input.a.xzz), var_3.b.a.zxz), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(6633i, var_1, u_input.a.x), vec3<i32>(17244i, 35524i, var_1)), u_input.a.wzz), select(select(var_3.b.a.zwz, vec3<bool>(true, true, true), vec3<bool>(var_0.x, false, true)), select(var_3.d.a.yzy, var_3.b.a.zyz, vec3<bool>(var_3.b.a.x, var_3.a, var_3.b.a.x)), var_3.b.a.zzw)), Struct_2(var_3.d.a));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_3, arg_3: bool) -> bool {
    global1 = vec2<u32>(global1.x, 4294967295u | _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(16154u, 6127u, 16822u)) ^ vec3<u32>(global1.x, 0u, 1u), max(firstTrailingBit(arg_2.c), arg_2.c)));
    let var_0 = arg_2.c.zx;
    global1 = var_0;
    let var_1 = _wgslsmith_mod_i32(i32(-1i) * -19258i, 9354i);
    global0 = array<Struct_1, 22>();
    return !func_1(abs(1i) >> (~4294967295u % 32u), 1u).e.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(!select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, global1.x == 4294967295u, 11960u != global1.x, true), true));
    var var_1 = 1000f;
    var var_2 = Struct_2(!var_0.a);
    var var_3 = ~min(_wgslsmith_sub_vec2_i32(countOneBits(-u_input.a.yz), -vec2<i32>(2147483647i, 51044i) | firstTrailingBit(vec2<i32>(2147483647i, 29098i))), reverseBits(_wgslsmith_div_vec2_i32(~vec2<i32>(-1i, u_input.a.x), u_input.a.xy)));
    var var_4 = u_input.a.x;
    let var_5 = -1i;
    global0 = array<Struct_1, 22>();
    var var_6 = !select(vec4<bool>(true, true, var_2.a.x, func_4(-vec4<i32>(var_3.x, var_5, -34503i, var_3.x), global0[_wgslsmith_index_u32(global1.x, 22u)], func_1(-16669i, 4294967295u), true)), select(var_2.a, !var_2.a, var_0.a.x), select(select(vec4<bool>(var_0.a.x, var_0.a.x, true, false), var_0.a, true), !(!vec4<bool>(true, false, true, var_2.a.x)), false));
    global1 = ~vec2<u32>(global1.x, 45460u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-664f, _wgslsmith_f_op_f32(f32(-1f) * -1003f))))), _wgslsmith_f_op_f32(-521f + _wgslsmith_f_op_f32(f32(-1f) * -1700f)), ~func_1(_wgslsmith_mod_i32(var_5 << (1u % 32u), ~(-1i)), 1u).d);
}

