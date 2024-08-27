struct Struct_1 {
    a: vec2<bool>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true), vec4<bool>(true, true, false, false));

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> bool {
    let var_0 = global0.b.xy;
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-182f + -1411f) - 165f), _wgslsmith_f_op_f32(f32(-1f) * -1927f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) * _wgslsmith_f_op_f32(-387f - 293f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-186f - -453f))), _wgslsmith_f_op_f32(f32(-1f) * -1503f)));
    var var_2 = _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(0i, u_input.d) >> (4294967295u % 32u), -u_input.a.x, -2147483647i, -(-32890i << (arg_0 % 32u))), min(~vec4<i32>(u_input.a.x, -36475i, 2147483647i, 90850i), vec4<i32>(u_input.d, select(34402i, -1i, false), u_input.a.x, 1i))), ~(vec4<i32>(_wgslsmith_mult_i32(u_input.d, u_input.c), _wgslsmith_add_i32(u_input.c, u_input.c), -1i, -8593i) ^ vec4<i32>(-1i, _wgslsmith_sub_i32(1i, 13060i), 2147483647i, ~(-2147483647i))));
    global0 = arg_2;
    let var_3 = (~(vec4<u32>(4294967295u, arg_0, 4294967295u, arg_0) | firstLeadingBit(vec4<u32>(u_input.b, 30585u, u_input.b, 81976u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(max(u_input.b, 51340u), arg_0, firstTrailingBit(u_input.b), min(u_input.b, 1u)), ~vec4<u32>(arg_0, 0u, 0u, arg_0))) >> (abs(~(~vec4<u32>(28940u, arg_0, 15272u, arg_0))) % vec4<u32>(32u));
    return select(any(!select(arg_1.zz, arg_1.xw, vec2<bool>(global0.b.x, arg_2.b.x))), all(!select(!vec4<bool>(global1.x, arg_1.x, false, false), vec4<bool>(false, global0.b.x, arg_1.x, global1.x), global0.b)), arg_1.x && true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec2<bool>(func_3(22202u, global0.b, Struct_1(!global0.b.wx, select(vec4<bool>(true, false, global1.x, global1.x), global0.b, global0.b.x))), true), select(global0.b, vec4<bool>(true, true, true != all(global0.b), global0.b.x), !global0.a.x));
    global1 = select(var_0.b.wz, !var_0.b.xy, vec2<bool>(!any(var_0.b.yx), false));
    let var_1 = firstTrailingBit(-u_input.a.zx);
    return var_0;
}

fn func_1() -> bool {
    global0 = func_2();
    var var_0 = vec3<f32>(-487f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -382f) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-667f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(454f - -1539f))))), -119f);
    let var_1 = func_3(u_input.b, global0.b, Struct_1(vec2<bool>(global0.a.x, global1.x), !select(global0.b, select(vec4<bool>(global1.x, global1.x, true, global0.b.x), global0.b, global0.b), global1.x)));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-236f, -1271f, 207f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, var_0.x, -986f), vec3<f32>(var_0.x, 162f, var_0.x), vec3<bool>(var_1, false, false))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) + var_0.x)))), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, -2540f)))) * _wgslsmith_f_op_f32(ceil(-120f))));
    return global0.b.x;
}

fn func_4(arg_0: vec3<bool>) -> Struct_1 {
    global0 = func_2();
    var var_0 = select(firstLeadingBit(~_wgslsmith_div_vec3_i32(~u_input.a, countOneBits(vec3<i32>(u_input.a.x, 11005i, u_input.d)))), _wgslsmith_mod_vec3_i32(u_input.a ^ select(vec3<i32>(u_input.c, u_input.d, 45281i), -vec3<i32>(u_input.d, u_input.a.x, u_input.a.x), func_2().b.xzx), ~abs(firstTrailingBit(u_input.a))), select(vec3<bool>(false, _wgslsmith_f_op_f32(step(1000f, -1160f)) == _wgslsmith_f_op_f32(-138f - -1000f), false), global0.b.xxz, !global1.x));
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1f, -371f)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-476f + 1630f)))))));
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(abs(1i), firstLeadingBit(reverseBits(abs(var_0.x)))), var_0.x, 1i);
    return Struct_1(arg_0.zz, vec4<bool>(-(~22991i) < _wgslsmith_add_i32(_wgslsmith_sub_i32(-2147483647i, 1i), _wgslsmith_div_i32(u_input.c, -35342i)), any(!global0.b.zxx), arg_0.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<bool>(func_1(), global0.b.x, global0.b.x));
    let var_1 = ~u_input.b;
    var var_2 = 0u;
    var_0 = func_2();
    let var_3 = func_2();
    let var_4 = -u_input.a.x;
    let var_5 = select(func_4(select(select(var_0.b.yxz, func_2().b.ywz, func_2().b.wzy), vec3<bool>(any(vec4<bool>(true, var_3.a.x, global0.a.x, false)), true, func_1()), var_3.b.yyy)).b, func_4(select(vec3<bool>(var_0.b.x, func_4(vec3<bool>(true, var_0.a.x, var_0.b.x)).b.x, func_4(vec3<bool>(true, global0.a.x, false)).b.x), select(func_4(vec3<bool>(var_3.b.x, var_3.a.x, false)).b.yyx, !var_0.b.yyz, var_3.b.x || var_3.b.x), !(!global1.x))).b, true);
    let var_6 = Struct_1(var_5.xx, var_3.b);
    let var_7 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(41692u, 30858u, max(u_input.b, firstTrailingBit(29964u))) << (_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b) & ~vec3<u32>(4294967295u, u_input.b, 49741u), ~(vec3<u32>(4294967295u, var_1, 0u) & vec3<u32>(var_1, var_1, 4294967295u))) % vec3<u32>(32u)), countOneBits((_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.b, 0u), vec3<u32>(4294967295u, 4728u, 1u)) | vec3<u32>(4294967295u, 0u, var_1)) | vec3<u32>(reverseBits(4294967295u), 1u, u_input.b)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-535f + -613f), -608f, 2186f))));
}

