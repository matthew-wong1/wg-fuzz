struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 37206i, vec4<f32>(-1407f, -314f, 1628f, -194f));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec2<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(global0.c.x * 828f))))));
    global0 = arg_1.e;
    global0 = arg_1.b;
    var var_1 = arg_1;
    global0 = arg_1.e;
    return !(!(!(2014f <= arg_0.x)));
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(any(vec4<bool>(false, true, false, true)) & true, global0.b, global0.c);
    var var_0 = Struct_2(u_input.b & ~(u_input.b | -vec2<i32>(u_input.b.x, global0.b)), Struct_1(any(!vec2<bool>(global0.a, global0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 5209i, global0.b) ^ ~vec3<i32>(-1i, u_input.a.x, -1i), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-18102i, 0i, 10187i), u_input.a.zyy), max(u_input.a.wwy, vec3<i32>(global0.b, global0.b, -1i)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, global0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -747f) + _wgslsmith_f_op_f32(select(global0.c.x, global0.c.x, global0.a))), 783f, -1210f)), Struct_1(!func_3(global0.c.yw, Struct_2(vec2<i32>(-1i, global0.b), Struct_1(true, u_input.b.x, global0.c), Struct_1(global0.a, u_input.b.x, vec4<f32>(global0.c.x, global0.c.x, global0.c.x, global0.c.x)), vec2<f32>(-1218f, global0.c.x), Struct_1(true, u_input.b.x, global0.c)), !vec2<bool>(true, global0.a)), global0.b, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(global0.c.x, 306f)), _wgslsmith_f_op_f32(-global0.c.x), global0.c.x, _wgslsmith_f_op_f32(1807f - -1605f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1387f, -1000f, 1100f, global0.c.x), vec4<f32>(-385f, global0.c.x, global0.c.x, global0.c.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(921f, -1037f, global0.c.x, global0.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(round(-385f)), global0.c.x), Struct_1(true, 14336i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1640f, global0.c.x, global0.c.x, global0.c.x) + vec4<f32>(global0.c.x, -1113f, 932f, -520f)))));
    var var_1 = true;
    var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.a, abs(countOneBits(u_input.a))), ~(min(2147483647i, var_0.a.x) | (var_0.c.b << (u_input.d.x % 32u)))), var_0.b, var_0.b, vec2<f32>(_wgslsmith_f_op_f32(step(var_0.c.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0.c.x)))))), var_0.c.c.x), Struct_1(false, 14218i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.c.x), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_div_f32(global0.c.x, var_0.d.x), 708f))));
    var var_2 = vec4<bool>(abs(u_input.d.x) <= ~(~(u_input.c.x & 4294967295u)), true, true, (90325u >> ((u_input.d.x & 2498u) % 32u)) > u_input.d.x);
    return Struct_2(-min(var_0.a, _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(global0.b, -18172i) >> (u_input.c.wz % vec2<u32>(32u)))), Struct_1(var_2.x, global0.b, _wgslsmith_f_op_vec4_f32(exp2(var_0.e.c))), var_0.e, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.c.c.zx)), Struct_1(u_input.c.x == u_input.c.x, -49549i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.e.c)) - global0.c)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<i32> {
    global0 = arg_1;
    var var_0 = func_2();
    var var_1 = func_2().e;
    var_0 = func_2();
    global0 = Struct_1(any(!vec4<bool>(global0.a, !arg_0.a, false, true)), 1i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, arg_2.x, -128f, arg_2.x))));
    return _wgslsmith_div_vec2_i32(abs(u_input.b), _wgslsmith_mult_vec2_i32(u_input.a.yx, ~var_0.a));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>) -> Struct_2 {
    global0 = Struct_1(false, i32(-1i) * -1765i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-365f, -1000f, global0.c.x, arg_0.e.c.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, -498f, -2671f))))));
    var var_0 = vec3<bool>(reverseBits(abs(arg_1.x)) != min(u_input.b.x, 28759i), _wgslsmith_f_op_f32(f32(-1f) * -1000f) > _wgslsmith_div_f32(-917f, _wgslsmith_f_op_f32(min(arg_0.b.c.x, -243f))), true);
    var var_1 = Struct_2(u_input.a.xz, arg_0.e, func_2().e, arg_0.e.c.zz, arg_0.e);
    var var_2 = func_3(vec2<f32>(var_1.c.c.x, 837f), func_2(), var_0.zx);
    var_2 = all(!var_0.yz);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(_wgslsmith_clamp_vec2_i32(u_input.b, ~func_1(Struct_1(false, 20716i, global0.c), Struct_1(global0.a, 41318i, vec4<f32>(global0.c.x, global0.c.x, -805f, 1000f)), vec3<f32>(-627f, global0.c.x, global0.c.x)), abs(u_input.b)), func_2().b, Struct_1(!global0.a, 17178i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.c.x, global0.c.x, -465f, 314f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-658f, 135f) * vec2<f32>(1756f, 1123f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.c.x, global0.c.x)))), func_2().c), u_input.a);
    var var_1 = false;
    global0 = Struct_1(true, -8483i, var_0.b.c);
    var_1 = false & func_4(Struct_2(-vec2<i32>(u_input.b.x, -1i) >> (~vec2<u32>(u_input.c.x, 0u) % vec2<u32>(32u)), var_0.e, Struct_1(true, -13666i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1959f, var_0.b.c.x, 1000f, -1000f))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-513f, global0.c.x))), var_0.c), u_input.a).c.a;
    let var_2 = global0.c.zw;
    var_1 = any(select(!(!vec4<bool>(false, global0.a, var_0.e.a, false)), vec4<bool>(true, true, true, global0.a), func_4(func_4(Struct_2(vec2<i32>(u_input.a.x, 48118i), Struct_1(var_0.e.a, 1i, vec4<f32>(423f, -1113f, 681f, 672f)), Struct_1(global0.a, global0.b, var_0.c.c), vec2<f32>(-567f, -427f), Struct_1(var_0.b.a, -2147483647i, var_0.c.c)), u_input.a), abs(vec4<i32>(-50917i, 180i, global0.b, global0.b))).c.a)) & select(all(vec3<bool>(u_input.d.x <= 32060u, global0.a, false)), global0.a, global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, 1931f, ~_wgslsmith_add_vec4_u32(firstTrailingBit(~vec4<u32>(12210u, 41769u, 65251u, u_input.d.x)), reverseBits(vec4<u32>(53450u, 0u, 4294967295u, u_input.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.x), -476f));
}

