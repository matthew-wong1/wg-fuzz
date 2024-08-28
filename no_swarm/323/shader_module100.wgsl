struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-16059i, -983i, -38909i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1() -> Struct_1 {
    return Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -10123i, firstTrailingBit(1i)), ~global0.a));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(~global2.a.x, -18561i);
    global2 = func_1();
    let var_1 = Struct_1(global0.a);
    var var_2 = arg_1;
    let var_3 = Struct_2(func_1());
    return Struct_1(~vec3<i32>(_wgslsmith_dot_vec2_i32(~u_input.d.yx, ~vec2<i32>(u_input.c, u_input.b.x)), ~30595i, global2.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<bool> {
    global0 = Struct_1(~vec3<i32>(_wgslsmith_dot_vec3_i32(-global0.a, vec3<i32>(global2.a.x, arg_1.a.x, 38866i) & arg_3.a.a), -max(arg_3.a.a.x, u_input.d.x), 25425i));
    var var_0 = arg_0;
    global1 = any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false)))) & !(!any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), true)));
    let var_1 = max(~vec2<u32>(26914u, _wgslsmith_sub_u32(0u, u_input.a.x)), _wgslsmith_div_vec2_u32(max(u_input.e.zy, u_input.e.zx) >> (_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 23921u), u_input.a.xy) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yx, u_input.e.zz), ~u_input.e.yy, u_input.a.zx)) & ~countOneBits(min(u_input.a.xx, u_input.e.xx)));
    var var_2 = arg_3.a.a.x <= global0.a.x;
    return select(vec3<bool>(true, false, false), select(vec3<bool>(true, !(4294967295u > u_input.a.x), all(vec3<bool>(false, false, true)) == false), !vec3<bool>(true, true, any(vec2<bool>(true, true))), vec3<bool>(false, select(0u != var_1.x, all(vec2<bool>(true, false)), 25229u > u_input.a.x), true)), !(!vec3<bool>(true, true, all(vec4<bool>(true, true, false, true)))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = -1000f;
    global0 = Struct_1(~vec3<i32>(_wgslsmith_div_i32(-1i, arg_2.a.x), 2147483647i, _wgslsmith_div_i32(-2147483647i, arg_2.a.x)) | global0.a);
    let var_1 = arg_3;
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(arg_0, _wgslsmith_f_op_vec3_f32(max(arg_0, vec3<f32>(102f, var_0, -424f)))))))));
    global0 = Struct_1(min(arg_2.a, _wgslsmith_div_vec3_i32(-(global2.a & vec3<i32>(var_1.a.x, global0.a.x, arg_2.a.x)), vec3<i32>(min(arg_2.a.x, -16105i), arg_2.a.x, arg_1.a.a.x))));
    return true;
}

fn func_2(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1975f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-736f))), _wgslsmith_f_op_f32(f32(-1f) * -1728f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1484f, -191f, -713f))), func_4(Struct_2(arg_0), arg_0, Struct_2(func_3(false, vec4<f32>(-195f, -626f, -1167f, 1148f), 0u)), Struct_2(func_3(true, vec4<f32>(461f, 492f, 934f, 1479f), u_input.a.x))))), Struct_2(arg_0), func_3(true, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-695f, -869f, 211f, 510f), vec4<f32>(630f, -1000f, 235f, 217f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(288f, 760f, 876f, 1000f), vec4<f32>(-2187f, 650f, 557f, -1755f))))), firstTrailingBit(_wgslsmith_dot_vec4_u32(u_input.e, ~vec4<u32>(0u, u_input.e.x, u_input.e.x, 4294967295u)))), func_3(!(~u_input.e.x > 0u), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(895f, -562f, 861f, -330f) * vec4<f32>(1477f, -1000f, 1181f, -359f)))))), firstTrailingBit(u_input.a.x)));
    var var_1 = firstTrailingBit(abs(min(select(~vec2<i32>(42944i, global2.a.x), arg_0.a.zy, true), arg_0.a.yy)));
    let var_2 = vec2<i32>(~(-1i) ^ _wgslsmith_clamp_i32(func_3(false, vec4<f32>(-705f, -1684f, -382f, -351f), 7857u).a.x, arg_0.a.x, arg_0.a.x), select(var_1.x, func_3(var_0, vec4<f32>(-516f, -331f, -1468f, 1369f), u_input.a.x).a.x, var_0)) | firstLeadingBit(u_input.d.zz);
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -341f)), 1000f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(490f - -459f), _wgslsmith_f_op_f32(abs(-202f)), var_0)), _wgslsmith_f_op_f32(abs(-1827f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = ((var_0 | var_0) | var_0) || false;
    return !vec4<bool>(countOneBits(~u_input.a.x) >= ~(u_input.a.x << (1u % 32u)), any(vec2<bool>(u_input.e.x <= 58088u, func_5(vec3<f32>(-777f, -645f, -252f), Struct_2(Struct_1(global2.a)), Struct_1(arg_0.a), arg_0))), var_0, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.e.x, _wgslsmith_sub_u32(u_input.e.x, u_input.e.x)), u_input.a.x, abs(countOneBits(15230u)), ~u_input.e.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(~7549u, ~(u_input.e.x << (u_input.e.x % 32u)), abs(0u), 9398u), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.e.x, ~u_input.e.x, reverseBits(7502u)), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(37626u, u_input.a.x, 13943u, u_input.a.x), vec4<u32>(0u, 49498u, 34989u, 4294967295u))))), true);
    global1 = any(vec4<bool>(any(func_2(func_1())), true, min(_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(var_0.x, 25565u)), 4294967295u) == _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.e.x, 1837u), var_0.x), true));
    var var_1 = Struct_2(func_1());
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-157f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1186f)))) - _wgslsmith_f_op_f32(abs(-146f)));
    global2 = var_1.a;
    global2 = func_1();
    var var_3 = reverseBits(u_input.e) ^ _wgslsmith_add_vec4_u32(firstLeadingBit(u_input.e), max(abs(_wgslsmith_clamp_vec4_u32(u_input.e, var_0, vec4<u32>(9867u, var_0.x, 57281u, u_input.e.x))), (var_0 >> (vec4<u32>(var_0.x, 54230u, 4294967295u, 38419u) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.e.x, 87944u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, 1u, 30584u)) % vec4<u32>(32u))));
    global0 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(global2.a, abs(-var_1.a.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -898f))) + -586f), vec2<i32>(9716i, global0.a.x));
}

