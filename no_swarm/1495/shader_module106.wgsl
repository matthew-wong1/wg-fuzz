struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec2<i32>(1i, -1i), vec4<bool>(true, true, false, false), i32(-2147483648));

var<private> global1: Struct_1;

var<private> global2: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_4(true, Struct_1(-(~vec2<i32>(1i, 1i)), global0.b, firstLeadingBit(1i)));
    global2 = vec3<i32>(u_input.a.x, 23819i, 1i);
    return var_0.b;
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: vec3<bool>) -> f32 {
    global2 = -vec3<i32>(_wgslsmith_dot_vec3_i32(-_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global0.c, arg_2.x), vec3<i32>(arg_2.x, 20344i, 0i), arg_2.yxz), vec3<i32>(global2.x, global2.x, -arg_2.x)), global2.x, -arg_2.x);
    global2 = -(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(arg_2.yyw, vec3<i32>(global0.c, 2147483647i, -2147483647i)), vec3<i32>(global2.x, -2147483647i, -2147483647i), ~vec3<i32>(25850i, global2.x, 1i)));
    global0 = Struct_1(select(global1.a, global2.yz, select(!vec2<bool>(false, arg_3.x), func_2().b.ww, func_2().b.zw)), global0.b, -2147483647i);
    let var_0 = _wgslsmith_div_f32(arg_0.x, arg_0.x);
    let var_1 = Struct_2(Struct_1(~_wgslsmith_mod_vec2_i32(func_2().a, _wgslsmith_div_vec2_i32(global0.a, vec2<i32>(arg_2.x, 1i))), vec4<bool>(global1.b.x, true, false, global1.b.x || true), global0.c), _wgslsmith_sub_vec3_i32(arg_2.xzw, _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(2147483647i, global0.c), -3261i, global0.a.x ^ -1i), vec3<i32>(abs(u_input.a.x), global0.c & u_input.a.x, 1i))), firstTrailingBit(_wgslsmith_mod_vec4_i32(arg_2, arg_2)) ^ -(~vec4<i32>(30090i, u_input.a.x, arg_2.x, -601i)), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(_wgslsmith_dot_vec4_i32(arg_2, vec4<i32>(global2.x, arg_2.x, global0.a.x, -13471i)), select(2147483647i, arg_2.x, global0.b.x))), global1.b, arg_2.x), arg_2.xx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool) -> i32 {
    global1 = func_2();
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-238f, 1410f, -1698f)))))), vec3<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(1240f, 449f), _wgslsmith_div_f32(1773f, -936f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(vec4<f32>(-502f, 576f, -1000f, 972f), vec2<u32>(21232u, 15964u), vec4<i32>(arg_0.e.x, global1.a.x, 0i, arg_0.d.c), arg_0.a.b.zzx)))))))));
    var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) - -400f) * var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x)))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(415f, -414f, -1067f, var_0.x), vec4<f32>(386f, -608f, 374f, 259f), global1.b)))), abs(select(vec2<u32>(13090u, 1u), ~vec2<u32>(1413u, 66311u), select(global1.b.ww, vec2<bool>(true, false), vec2<bool>(false, global0.b.x)))), _wgslsmith_add_vec4_i32(~arg_0.c, vec4<i32>(global1.a.x, _wgslsmith_dot_vec2_i32(global2.yz, vec2<i32>(-1i, 1i)), i32(-1i) * -2147483647i, max(-54976i, -17800i))), !(!global1.b.yzy))));
    var var_1 = Struct_1(firstTrailingBit(_wgslsmith_add_vec2_i32(-global1.a, _wgslsmith_mult_vec2_i32(abs(vec2<i32>(-2147483647i, -38709i)), _wgslsmith_mod_vec2_i32(global1.a, vec2<i32>(arg_0.e.x, -49197i))))), vec4<bool>(true, all(global1.b) == (global1.b.x & false), !arg_0.a.b.x, arg_1), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(global2.zz, -global1.a, firstLeadingBit(global0.a)), -_wgslsmith_sub_vec2_i32(vec2<i32>(global2.x, -32007i), u_input.a.yz)), vec2<i32>(_wgslsmith_dot_vec2_i32(max(u_input.a.yx, vec2<i32>(-2147483647i, 36439i)), global1.a ^ u_input.a.yz), global1.a.x >> (select(0u, 4726u, true) % 32u))));
    var var_2 = Struct_3(func_2());
    return -1i;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(arg_3, vec3<i32>(global0.c ^ (arg_1.b.a.x & -2147483647i), firstLeadingBit(_wgslsmith_mod_i32(-arg_0.a.a.x, firstTrailingBit(u_input.a.x))), _wgslsmith_add_i32(-2147483647i, min(func_1(Struct_2(Struct_1(arg_1.b.a, arg_1.b.b, global2.x), vec3<i32>(-4835i, global1.a.x, -66463i), vec4<i32>(arg_1.b.c, arg_1.b.a.x, -12224i, -2147483647i), Struct_1(vec2<i32>(u_input.a.x, global2.x), global1.b, -7145i), arg_0.a.a), false), 0i ^ arg_0.a.c))), firstTrailingBit(-(~(vec4<i32>(arg_1.b.a.x, -19665i, -9153i, -24335i) | vec4<i32>(arg_0.a.c, global0.c, arg_2, -13463i)))), arg_0.a, abs(vec2<i32>(1i, global0.a.x)) | global1.a);
    var var_1 = arg_1;
    var var_2 = -var_0.c;
    var_1 = arg_1;
    var var_3 = global0.c;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    let var_0 = Struct_4(global0.b.x, func_4(Struct_3(Struct_1(global2.zx & global0.a, !vec4<bool>(false, global1.b.x, global0.b.x, global1.b.x), 20437i ^ u_input.a.x)), Struct_4(true, Struct_1(abs(global2.xx), vec4<bool>(true, true, true, true), i32(-1i) * -23993i)), func_1(Struct_2(Struct_1(global0.a, vec4<bool>(global1.b.x, global0.b.x, global1.b.x, true), 1i), u_input.a << (vec3<u32>(1u, 61346u, 0u) % vec3<u32>(32u)), vec4<i32>(global0.a.x, global0.a.x, -64519i, u_input.a.x) | vec4<i32>(global0.c, 8841i, 13896i, 4649i), Struct_1(vec2<i32>(u_input.a.x, -1i), vec4<bool>(true, false, true, false), 0i), reverseBits(global1.a)), false), func_2()));
    let var_1 = true;
    global1 = Struct_1(vec2<i32>(max(_wgslsmith_sub_i32(0i, -2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global0.c, -12271i), vec3<i32>(-3428i, var_0.b.a.x, global0.c))) ^ firstTrailingBit(global2.x), max(59336i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global2.x, global1.a.x), vec2<i32>(var_0.b.a.x, global0.a.x)), global2.xy))), !select(!select(vec4<bool>(var_0.b.b.x, true, var_0.a, var_1), vec4<bool>(global0.b.x, global0.b.x, var_1, var_1), global0.b.x), !vec4<bool>(global1.b.x, true, var_0.a, true), any(func_4(Struct_3(Struct_1(vec2<i32>(0i, u_input.a.x), global0.b, 1i)), var_0, global1.a.x, Struct_1(vec2<i32>(-2147483647i, global1.a.x), var_0.b.b, global1.a.x)).b.zw)), firstLeadingBit(1i));
    let var_2 = false && ((true || all(var_0.b.b.zw)) == all(var_0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, 94707u, ~0u, ~4294967295u));
}

