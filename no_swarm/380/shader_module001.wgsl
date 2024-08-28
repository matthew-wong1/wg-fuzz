struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_2;

var<private> global2: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<f32>) -> i32 {
    var var_0 = ~(~20398u) << (u_input.c % 32u);
    let var_1 = 35044u;
    let var_2 = ~abs(abs(u_input.c));
    global2 = select(vec4<bool>(true, all(vec4<bool>(arg_1.b, true, true, !global1.a.c)), any(!select(global2.xwz, global2.zxy, arg_1.b)), abs(-14549i) == ~u_input.d.x), select(vec4<bool>(true, !(!global2.x), arg_1.d.x, all(select(vec4<bool>(true, false, arg_1.c, global2.x), vec4<bool>(global2.x, false, global2.x, global2.x), vec4<bool>(true, false, arg_1.b, true)))), !select(select(vec4<bool>(false, true, false, global2.x), vec4<bool>(global2.x, false, true, arg_1.c), true), vec4<bool>(global2.x, global1.d.b, global2.x, global1.d.d.x), true), true), true);
    global1 = Struct_2(global1.d, -min(~_wgslsmith_add_i32(arg_1.a.x, -11180i), u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-932f + arg_3.x) * global1.e.x), Struct_1(min(min(_wgslsmith_add_vec4_i32(global1.a.a, arg_0), vec4<i32>(u_input.e, arg_0.x, -22543i, 0i) | arg_1.a), _wgslsmith_mult_vec4_i32(arg_0 & vec4<i32>(u_input.b.x, 40624i, -124i, -2147483647i), ~vec4<i32>(arg_0.x, global0.x, global1.a.a.x, u_input.d.x))), false, arg_1.b, vec2<bool>(global2.x, u_input.c != ~4294967295u)), global1.e);
    return -(firstTrailingBit(reverseBits(_wgslsmith_sub_i32(global0.x, arg_1.a.x))) & global0.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = global1.d;
    global1 = Struct_2(Struct_1(~max(var_0.a, vec4<i32>(1i, global1.d.a.x, 46570i, u_input.e)) | -firstLeadingBit(vec4<i32>(u_input.a, arg_0, -11374i, arg_0)), !any(var_0.d) | true, true, vec2<bool>((u_input.b.x >> (1u % 32u)) >= max(global0.x, -36226i), global2.x)), u_input.a, 386f, Struct_1(abs(_wgslsmith_clamp_vec4_i32(var_0.a, abs(vec4<i32>(arg_0, 1i, arg_0, 1i)), vec4<i32>(8232i, global1.a.a.x, u_input.e, global1.d.a.x))), global2.x, !any(vec4<bool>(global1.a.c, var_0.b, true, false)) && (false || (true | arg_1.d.b)), select(vec2<bool>(any(vec3<bool>(true, true, true)), global2.x), select(vec2<bool>(false, true), global2.zx, vec2<bool>(arg_1.d.d.x, true)), var_0.d.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-global1.e))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1471f * _wgslsmith_f_op_f32(max(1541f, arg_1.e.x))), _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - global1.e.x) - _wgslsmith_f_op_f32(446f + -309f))))));
    global0 = vec2<i32>(-1i, global0.x);
    var var_2 = arg_1;
    return min(var_0.a, (vec4<i32>(0i, func_3(vec4<i32>(u_input.e, var_0.a.x, 68805i, u_input.e), var_2.d, vec3<f32>(arg_1.e.x, var_1, global1.c), vec3<f32>(1869f, global1.c, var_1)), _wgslsmith_div_i32(global1.b, var_2.b), _wgslsmith_add_i32(u_input.d.x, -20048i)) | _wgslsmith_add_vec4_i32(abs(vec4<i32>(-4702i, -25331i, 58965i, 7043i)), max(vec4<i32>(-75095i, arg_1.d.a.x, -10376i, -1i), vec4<i32>(global0.x, global0.x, arg_0, u_input.e)))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(18085u), ~0u, u_input.c, u_input.c), (vec4<u32>(1u, 66387u, 7329u, 4294967295u) >> (vec4<u32>(u_input.c, 1u, u_input.c, u_input.c) % vec4<u32>(32u))) | ~vec4<u32>(46072u, u_input.c, 1u, 4294967295u)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2) -> i32 {
    var var_0 = arg_2.a.d.x;
    let var_1 = -func_2(-global0.x | arg_2.b, arg_2);
    let var_2 = global2.x;
    global2 = !(!select(vec4<bool>(!arg_2.a.b, all(vec3<bool>(true, arg_2.d.d.x, true)), all(vec3<bool>(global2.x, false, global1.a.c)), global2.x), vec4<bool>(true, true, true, true), true || arg_2.a.d.x));
    var_0 = any(select(vec4<bool>(true, true, (arg_2.e.x == 129f) && arg_2.d.c, global2.x), vec4<bool>(global1.a.b, true, true, global2.x), !select(select(vec4<bool>(global2.x, global1.a.c, false, global2.x), vec4<bool>(global1.a.d.x, true, arg_2.a.c, arg_2.d.d.x), arg_2.a.b), select(vec4<bool>(global2.x, global2.x, true, global1.a.c), vec4<bool>(global1.d.d.x, true, true, false), false), select(vec4<bool>(false, true, false, global1.d.b), vec4<bool>(arg_2.d.b, global2.x, false, global2.x), arg_2.d.b))));
    return -max(-1i, -global1.d.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(reverseBits(-2147483647i), u_input.a);
    var var_0 = Struct_1(vec4<i32>(global1.a.a.x, func_1(~global1.d.a, (global1.a.a.yyw & vec3<i32>(global1.d.a.x, global0.x, 29965i)) >> (~vec3<u32>(4294967295u, 1u, 46575u) % vec3<u32>(32u)), Struct_2(global1.a, _wgslsmith_mod_i32(2147483647i, global0.x), -416f, global1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1726f, 532f, -1000f, global1.e.x)))), -25082i >> ((abs(u_input.c) >> ((u_input.c & 71960u) % 32u)) % 32u), ~(~func_2(-1i, Struct_2(Struct_1(global1.a.a, global2.x, true, global1.a.d), -38632i, global1.e.x, Struct_1(vec4<i32>(u_input.e, global0.x, global1.d.a.x, global1.b), true, global2.x, global1.d.d), vec4<f32>(-1466f, -650f, -466f, -2517f))).x)), (global1.d.d.x || (true || global1.d.b)) && global1.d.c, false, select(select(!global1.a.d, !select(vec2<bool>(global1.d.d.x, global2.x), vec2<bool>(global1.d.c, global1.a.c), global2.wx), true), !(!vec2<bool>(global2.x, global1.a.d.x)), global1.a.d));
    let var_1 = Struct_2(Struct_1(firstLeadingBit(global1.d.a), false, select(true, var_0.d.x, true), vec2<bool>(false, _wgslsmith_f_op_f32(exp2(global1.c)) <= _wgslsmith_f_op_f32(f32(-1f) * -223f))), firstTrailingBit(countOneBits(global1.b) << (u_input.c % 32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.e.x)), _wgslsmith_f_op_f32(global1.c * 521f)))), 199f)), Struct_1(var_0.a, false, any(global2.xy), select(!var_0.d, select(vec2<bool>(global1.a.c, var_0.b), vec2<bool>(true, var_0.b), select(false, var_0.b, var_0.c)), vec2<bool>(select(global1.d.b, true, global2.x), u_input.c >= 0u))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + global1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + global1.e.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c * global1.c))), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1625f)))));
    var var_2 = _wgslsmith_mult_i32(global1.b, u_input.e);
    let var_3 = Struct_1(var_1.a.a, var_1.a.b, any(vec4<bool>(global2.x != true, var_1.a.b, !global1.d.c, true)) && any(select(global2.xzw, select(vec3<bool>(false, false, true), global2.ywy, global2.xyz), select(global2.xyw, global2.zyy, global2.yyy))), !vec2<bool>(162f <= _wgslsmith_f_op_f32(-var_1.e.x), -997f > _wgslsmith_f_op_f32(ceil(653f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(var_1.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1612f)) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(445f, var_1.c), global1.e.wy), _wgslsmith_f_op_vec2_f32(select(global1.e.zx, vec2<f32>(277f, 1000f), vec2<bool>(false, false)))))) * global1.e.yz), firstLeadingBit(var_3.a), ~abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.c, 1u), vec4<u32>(4294967295u, u_input.c, u_input.c, 0u))) | min(vec4<u32>(u_input.c, firstLeadingBit(35027u), 0u, 1u), _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c, 15940u, u_input.c, 0u), vec4<u32>(39313u, u_input.c, u_input.c, 8107u))), firstLeadingBit(~var_1.d.a.zwx));
}

