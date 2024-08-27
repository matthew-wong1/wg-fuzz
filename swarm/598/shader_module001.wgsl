struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global2: vec4<bool>;

var<private> global3: bool = false;

var<private> global4: f32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec4<i32>) -> vec3<f32> {
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-418f - 568f) * _wgslsmith_f_op_f32(f32(-1f) * -385f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.b.d.x), arg_1.a.b.d.x));
    global1 = select(!(!vec4<bool>(any(global1.xw), global2.x, false, arg_1.a.c.a)), !(!select(select(vec4<bool>(false, true, arg_1.a.b.a, global1.x), vec4<bool>(global1.x, true, arg_1.a.c.a, true), global1.x), !vec4<bool>(true, true, false, global1.x), select(vec4<bool>(true, false, global1.x, global2.x), vec4<bool>(arg_1.a.c.a, global2.x, true, false), vec4<bool>(true, global1.x, global1.x, arg_1.a.b.a)))), select(vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(arg_1.a.b.a, global1.x, arg_1.a.c.a, global2.x), vec4<bool>(false, false, global2.x, global1.x), vec4<bool>(global2.x, arg_1.a.b.a, false, false)), !vec4<bool>(global1.x, false, true, global1.x), select(vec4<bool>(global2.x, true, true, global1.x), vec4<bool>(true, true, true, false), global2.x)), !select(vec4<bool>(false, global1.x, true, global2.x), vec4<bool>(true, arg_1.a.b.a, true, global1.x), vec4<bool>(global1.x, false, arg_1.a.b.a, true)), true), select(!vec4<bool>(true, global2.x, false, true), !select(vec4<bool>(false, global1.x, false, true), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(true, arg_1.a.b.a, true, true)), vec4<bool>(global2.x, true, select(false, true, true), !arg_1.a.c.a))));
    let var_0 = 5868u;
    let var_1 = Struct_3(arg_1.a);
    global0 = true;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.a.b.d), var_1.a.b.d, !(!global2.yyz))))));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32) -> vec4<bool> {
    var var_0 = firstTrailingBit(u_input.b.xx);
    global2 = vec4<bool>(true, arg_0.a.c.a, global1.x, global2.x);
    var var_1 = select(~(~u_input.b.x), _wgslsmith_add_u32(firstTrailingBit(13392u), 1u), all(global1.xyy)) | 86006u;
    let var_2 = Struct_1(arg_0.a.b.a, ~max(0u, u_input.b.x) ^ ~arg_0.a.b.b, arg_0.a.b.c, _wgslsmith_f_op_vec3_f32(arg_0.a.b.d - arg_0.a.b.d), min(-1i, ~u_input.a.x));
    var var_3 = !(!(!select(!vec4<bool>(var_2.a, global2.x, false, true), select(vec4<bool>(global1.x, true, arg_1, true), vec4<bool>(false, false, global1.x, false), true), global1.x)));
    return select(!(!vec4<bool>(arg_1, false, !global1.x, false)), select(select(!vec4<bool>(arg_1, false, arg_1, arg_0.a.c.a), !select(vec4<bool>(var_3.x, global2.x, var_2.a, arg_0.a.b.a), vec4<bool>(var_3.x, false, false, true), true), true), select(vec4<bool>(select(var_3.x, true, true), any(var_3.yw), all(var_3.wz), false), !(!vec4<bool>(true, false, true, global2.x)), false), vec4<bool>(arg_0.a.b.b != arg_0.a.b.b, false, true, true)), select(vec4<bool>(!select(true, false, false), all(global1.xy), true, var_2.a), select(!(!vec4<bool>(false, var_2.a, var_2.a, arg_1)), !select(vec4<bool>(arg_1, arg_1, var_2.a, global2.x), vec4<bool>(global2.x, true, true, global1.x), vec4<bool>(false, global1.x, global1.x, arg_1)), false), !select(select(vec4<bool>(arg_1, arg_0.a.b.a, arg_1, true), vec4<bool>(true, arg_0.a.b.a, false, var_3.x), vec4<bool>(false, false, false, true)), vec4<bool>(true, var_2.a, var_3.x, false), select(var_3.x, global1.x, false))));
}

fn func_2() -> vec4<bool> {
    let var_0 = func_4(Struct_3(Struct_2(select(~vec4<i32>(1i, u_input.a.x, -2147483647i, 0i), min(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -16679i), vec4<i32>(2147483647i, u_input.a.x, 2147483647i, u_input.a.x)), global1.x), Struct_1(global2.x, select(u_input.b.x, 30615u, global2.x), select(vec4<i32>(-2147483647i, 1i, -31315i, u_input.a.x), vec4<i32>(40041i, u_input.a.x, u_input.a.x, 16534i), false), _wgslsmith_f_op_vec3_f32(func_3(u_input.a.x, Struct_3(Struct_2(vec4<i32>(-1645i, u_input.a.x, u_input.a.x, 1i), Struct_1(global1.x, u_input.b.x, vec4<i32>(2147483647i, u_input.a.x, -2147483647i, u_input.a.x), vec3<f32>(207f, -550f, -537f), 6299i), Struct_1(true, 0u, vec4<i32>(u_input.a.x, 82319i, u_input.a.x, -2147483647i), vec3<f32>(-199f, -1159f, -721f), u_input.a.x))), vec4<i32>(2147483647i, 2994i, 2147483647i, u_input.a.x))), 2147483647i), Struct_1(select(global2.x, false, true), _wgslsmith_dot_vec3_u32(u_input.b.yxz, u_input.b.wwx), reverseBits(vec4<i32>(2147483647i, -1i, 2147483647i, u_input.a.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, 556f, 242f) + vec3<f32>(-219f, -1453f, -194f)), 18271i))), !(any(select(vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(false, global1.x, true, false), global2.x)) || select(global1.x, all(global2.zxy), all(vec3<bool>(true, false, false)))), ~u_input.a.x & u_input.a.x);
    global3 = true;
    global2 = var_0;
    global0 = true;
    var var_1 = vec2<bool>(true, false);
    return var_0;
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> vec4<i32> {
    global3 = global1.x;
    var var_0 = !func_2();
    global3 = all(var_0.zw);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(2157f)), 217f), _wgslsmith_div_f32(arg_1.a.b.d.x, _wgslsmith_f_op_f32(select(-318f, arg_1.a.b.d.x, global1.x))), global2.x)) * 259f));
    let var_2 = func_2();
    return vec4<i32>(-1i) * -vec4<i32>(-arg_0, ~abs(-2147483647i), arg_2, select(_wgslsmith_mult_i32(-1i, 42456i), arg_2, false));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: Struct_1) -> u32 {
    var var_0 = !(!all(global2.zyz));
    var var_1 = arg_0;
    var var_2 = Struct_1(!var_1.a.c.a, min(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~26414u, arg_0.a.c.b), ~4294967295u), ~_wgslsmith_add_u32(arg_0.a.b.b, ~var_1.a.c.b)), -_wgslsmith_mod_vec4_i32(arg_0.a.c.c, ~arg_0.a.c.c | vec4<i32>(-1307i, 2147483647i, 74857i, 2147483647i)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_3.d.x, _wgslsmith_f_op_f32(arg_0.a.c.d.x * 1591f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.a.b.d.x)))), var_1.a.c.d)), 2147483647i);
    var_2 = arg_0.a.c;
    let var_3 = var_2.d.x;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global2.x), global2.x), global1.wy, !select(vec2<bool>(global2.x, global1.x), global2.ww, true))) && all(global2.wwy);
    var var_1 = 2147483647i != (firstTrailingBit(27721i) >> (u_input.b.x % 32u));
    let var_2 = ~func_5(Struct_3(Struct_2(~vec4<i32>(u_input.a.x, 28410i, 35237i, -2147483647i), Struct_1(var_0, u_input.b.x, vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 72181i), vec3<f32>(749f, 508f, -311f), -16282i), Struct_1(true, 48231u, vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 25574i), vec3<f32>(341f, -353f, 441f), 1i))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1117f, 1080f, 225f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(378f, -490f, 105f) + vec3<f32>(2449f, 1624f, -1008f)), vec3<f32>(-1807f, 274f, 1564f)))), u_input.b.wz, Struct_1(true, 37726u, _wgslsmith_sub_vec4_i32(func_1(-1i, Struct_3(Struct_2(vec4<i32>(u_input.a.x, -9281i, -2147483647i, 1i), Struct_1(global1.x, u_input.b.x, vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, 2147483647i), vec3<f32>(2141f, 1000f, -438f), u_input.a.x), Struct_1(true, u_input.b.x, vec4<i32>(16796i, 0i, u_input.a.x, 0i), vec3<f32>(335f, 1155f, -1000f), u_input.a.x))), u_input.a.x), vec4<i32>(5996i, 0i, 1i, -2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-854f, 1039f, -683f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(547f, -535f, 296f) + vec3<f32>(596f, 455f, -147f))), _wgslsmith_div_i32(u_input.a.x, 6942i) << (abs(u_input.b.x) % 32u)));
    let var_3 = abs(_wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(19859u, reverseBits(27150u), u_input.b.x, 6411u)));
    let var_4 = -7220i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(u_input.a.x, 55661i >> (firstTrailingBit(7930u) % 32u)));
}

