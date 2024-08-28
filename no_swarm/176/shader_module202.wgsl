struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -1i;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_2 {
    global0 = firstLeadingBit(1i);
    global0 = 74525i ^ countOneBits(_wgslsmith_div_i32(0i | _wgslsmith_dot_vec2_i32(vec2<i32>(-9581i, -36824i), vec2<i32>(27633i, -12607i)), -(~0i)));
    global0 = ~(-1i >> (u_input.a.x % 32u));
    var var_0 = !(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    global0 = 1i;
    return Struct_2(var_0.xx, Struct_1(-1000f));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_4(vec3<bool>(true, select(func_2().a.x, all(vec3<bool>(true, true, true)), true), arg_0.a.x), _wgslsmith_div_vec4_i32(~vec4<i32>(_wgslsmith_sub_i32(-48897i, 14746i), ~8974i, -36587i, ~34292i), vec4<i32>(~(-2147483647i), abs(-722i << (u_input.a.x % 32u)), 2628i, 1i)));
    var_0 = Struct_4(vec3<bool>(true, true, true), var_0.b);
    global0 = -2147483647i;
    var_0 = Struct_4(!(!(!vec3<bool>(false, arg_0.a.x, true))), var_0.b);
    var_0 = Struct_4(vec3<bool>(var_0.a.x && (func_2().b.a < _wgslsmith_f_op_f32(1238f + -907f)), func_2().a.x && (u_input.a.x > min(u_input.a.x, u_input.a.x)), true), vec4<i32>(var_0.b.x, -2147483647i, _wgslsmith_mult_i32(var_0.b.x, var_0.b.x ^ (var_0.b.x ^ -12889i)), ~(firstLeadingBit(var_0.b.x) & (0i << (u_input.a.x % 32u)))));
    return arg_0.b;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> bool {
    let var_0 = Struct_4(!vec3<bool>(any(vec2<bool>(false, false)), true, true), _wgslsmith_div_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~vec4<i32>(arg_2, arg_2, -2147483647i, arg_2)), min(max(vec4<i32>(arg_2, arg_2, arg_0.x, 1i), vec4<i32>(12429i, 0i, arg_2, arg_0.x)), -vec4<i32>(1i, arg_2, arg_0.x, 0i)) >> (~(~vec4<u32>(5685u, 3863u, 33591u, 74371u)) % vec4<u32>(32u))));
    let var_1 = func_3(func_2());
    global0 = firstLeadingBit(_wgslsmith_div_i32(2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_0.b.x, -20968i), vec2<i32>(2147483647i, 1i)), ~vec2<i32>(-2147483647i, var_0.b.x)), arg_0)));
    var var_2 = vec4<bool>(!(!all(select(vec4<bool>(var_0.a.x, true, false, var_0.a.x), vec4<bool>(var_0.a.x, true, var_0.a.x, false), vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, true)))), all(func_2().a), (true && (func_2().b.a > _wgslsmith_f_op_f32(var_1.a + var_1.a))) || true, true);
    var var_3 = func_2().b;
    return var_0.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_2.c.b.a;
    let var_1 = arg_2.d;
    var var_2 = _wgslsmith_mult_i32(arg_2.b, _wgslsmith_mult_i32(arg_2.b, -18899i));
    var var_3 = arg_2.b;
    let var_4 = arg_2.d.x;
    return func_2().b;
}

fn func_5(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, -1812f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, arg_1.a, -1161f) + vec3<f32>(555f, arg_1.a, arg_1.a))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.a), _wgslsmith_f_op_f32(trunc(-1636f)), 1954f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a, 219f, 1000f), vec3<f32>(arg_1.a, -568f, -1157f), true))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, 1433f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-974f, arg_1.a, 1187f)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(641f, arg_1.a, 1295f)) + vec3<f32>(arg_1.a, -1622f, 1000f)))));
    global0 = 3452i;
    global0 = 2147483647i;
    var var_1 = Struct_3(min(firstLeadingBit(u_input.a.xx) << (firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(64497u, u_input.a.x), u_input.a.xz)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.a.x), vec2<u32>(~u_input.a.x, u_input.a.x))), countOneBits(-_wgslsmith_clamp_i32(-arg_0, _wgslsmith_div_i32(arg_0, arg_0), ~arg_0)), func_2(), ~u_input.a.xz);
    global0 = ~1i;
    return Struct_3(~(~(~(~vec2<u32>(1u, u_input.a.x)))), firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 2147483647i, -7483i), vec3<i32>(-8008i, var_1.b, 17794i)), var_1.b, firstTrailingBit(0i), 1i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.b, var_1.b), vec3<i32>(var_1.b, 14902i, arg_0)), 1i, 0i << (var_1.d.x % 32u), ~arg_0))), Struct_2(vec2<bool>(var_1.c.a.x, var_1.c.a.x), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1486f - arg_1.a) * var_1.c.b.a))), firstLeadingBit(var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~(~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) >> (_wgslsmith_dot_vec2_u32(max(vec2<u32>(85099u, u_input.a.x), u_input.a.xx), _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a.x, u_input.a.x))) % 32u)));
    global0 = -19802i >> (var_0 % 32u);
    var var_1 = func_5(select(16340i, -18486i, firstLeadingBit(56959u) >= (u_input.a.x | 0u)) & _wgslsmith_mult_i32(~(~1440i), 0i), func_4(!vec3<bool>(true, false, func_1(vec2<i32>(-5076i, -1i), u_input.a.x, -1i)), func_3(Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, false), false), func_3(Struct_2(vec2<bool>(true, false), Struct_1(-1354f))))), Struct_3(select(u_input.a.yx ^ vec2<u32>(110005u, u_input.a.x), ~u_input.a.yx, vec2<bool>(false, false)), ~1i, Struct_2(select(vec2<bool>(false, true), vec2<bool>(true, false), true), Struct_1(1420f)), vec2<u32>(~u_input.a.x, min(u_input.a.x, u_input.a.x)))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.c.b.a), _wgslsmith_f_op_f32(1322f + _wgslsmith_f_op_f32(floor(699f)))))), -533f);
    let var_3 = var_1.c.a;
    var var_4 = -abs(-(~select(3304i, var_1.b, var_3.x)));
    var var_5 = func_5(var_1.b << (~30340u % 32u), var_1.c.b);
    var var_6 = func_5(62572i, var_1.c.b).c;
    var_4 = ~2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(abs(vec3<i32>(-16832i, var_1.b, var_5.b)) << (vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.a.x), ~22194u, 1u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(18307u, 52625u)), var_5.a), 17179u, _wgslsmith_add_u32(var_0 >> (16331u % 32u), ~1u)), u_input.a);
}

