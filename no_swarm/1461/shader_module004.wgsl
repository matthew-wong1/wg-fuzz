struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

var<private> global1: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec2<bool>(true, true), -147f, vec4<i32>(-14463i, 2147483647i, i32(-2147483648), 2147483647i), vec4<bool>(true, false, false, true), vec3<f32>(1931f, 286f, -1315f))), Struct_2(Struct_1(vec2<bool>(true, false), 517f, vec4<i32>(i32(-2147483648), -58090i, 31089i, -26063i), vec4<bool>(true, false, false, true), vec3<f32>(1298f, 1000f, -533f))), Struct_2(Struct_1(vec2<bool>(false, true), 837f, vec4<i32>(-5919i, -1i, 1i, 90908i), vec4<bool>(true, true, false, false), vec3<f32>(-755f, 2265f, -1461f))), Struct_2(Struct_1(vec2<bool>(false, false), -821f, vec4<i32>(1i, 1i, 59970i, -1i), vec4<bool>(false, true, true, true), vec3<f32>(-1567f, 554f, 946f))), Struct_2(Struct_1(vec2<bool>(true, true), 144f, vec4<i32>(0i, -1i, -29228i, 11002i), vec4<bool>(false, true, true, true), vec3<f32>(669f, -850f, 744f))));

var<private> global2: array<vec3<u32>, 12> = array<vec3<u32>, 12>(vec3<u32>(41609u, 13567u, 1u), vec3<u32>(0u, 1u, 75161u), vec3<u32>(20468u, 68242u, 69056u), vec3<u32>(62124u, 0u, 4294967295u), vec3<u32>(4294967295u, 32232u, 23891u), vec3<u32>(775u, 0u, 1u), vec3<u32>(4294967295u, 22104u, 78584u), vec3<u32>(4294967295u, 1u, 31956u), vec3<u32>(47580u, 36134u, 1u), vec3<u32>(4294967295u, 146900u, 22826u), vec3<u32>(0u, 36444u, 33550u), vec3<u32>(19528u, 0u, 9743u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = u_input.a.x ^ ~1u;
    global2 = array<vec3<u32>, 12>();
    global1 = array<Struct_2, 5>();
    let var_1 = vec2<i32>(1i, _wgslsmith_sub_i32(reverseBits(abs(-2147483647i)), ~(~(-2147483647i))) >> (_wgslsmith_dot_vec3_u32(firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 12u)]), ~(vec3<u32>(1u, 3418u, var_0) << (vec3<u32>(4294967295u, 0u, u_input.a.x) % vec3<u32>(32u)))) % 32u));
    global1 = array<Struct_2, 5>();
    return -2467i;
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> i32 {
    let var_0 = Struct_3(1i);
    let var_1 = var_0;
    var var_2 = vec4<bool>(true, all(arg_2.a.d), arg_2.a.a.x, arg_2.a.d.x);
    var var_3 = reverseBits(3148i);
    var var_4 = _wgslsmith_mod_vec2_i32(vec2<i32>(60013i & var_0.a, _wgslsmith_add_i32(func_3(92974u) | var_1.a, arg_2.a.c.x ^ ~arg_1.x)), _wgslsmith_div_vec2_i32(abs(~arg_1.zz), vec2<i32>(-59297i ^ arg_1.x, 0i)));
    return firstLeadingBit(-var_1.a);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> i32 {
    let var_0 = select(-abs(arg_1.c.x), _wgslsmith_div_i32(select(-func_2(11417u, arg_1.c, Struct_2(Struct_1(arg_1.d.ww, arg_1.b, vec4<i32>(arg_1.c.x, -29749i, arg_1.c.x, -10646i), vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.d.x), arg_1.e))), -32821i, all(vec2<bool>(true, arg_1.d.x))), arg_1.c.x), arg_1.d.x);
    global0 = array<Struct_1, 13>();
    global0 = array<Struct_1, 13>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_1.e))) - vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(1306f, arg_1.b)), arg_1.b)), _wgslsmith_div_vec3_f32(vec3<f32>(439f, -1290f, _wgslsmith_f_op_f32(-arg_1.e.x)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1.b, 220f, -339f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1063f, 757f, _wgslsmith_f_op_f32(-arg_1.e.x))))));
    let var_2 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~(-arg_1.c.yx ^ ~arg_1.c.yy), _wgslsmith_sub_vec2_i32((vec2<i32>(arg_1.c.x, 2147483647i) << (u_input.a.yy % vec2<u32>(32u))) | ~vec2<i32>(56904i, -67701i), arg_1.c.yy)), arg_1.c.yw);
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_i32(-func_1(~u_input.a.yz, global0[_wgslsmith_index_u32(4294967295u, 13u)]), -67468i) << (abs(1u) % 32u);
    var var_1 = ~u_input.a.x;
    global2 = array<vec3<u32>, 12>();
    var_0 = i32(-1i) * -1i;
    let var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~select(countOneBits(-vec4<i32>(-1i, 57528i, -1i, 0i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-25907i, -368i, -31697i, -7984i), vec4<i32>(0i, 1i, -30920i, 2147483647i), -vec4<i32>(-13883i, -24312i, -39385i, -35687i)), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec4_i32(select(~vec4<i32>(2147483647i, 58447i, 0i, 2147483647i), ~vec4<i32>(-1i, -66829i, -2147483647i, -1i), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false))) | vec4<i32>(~3642i, i32(-1i) * -6288i, func_2(1u, vec4<i32>(16126i, 1i, 9147i, 2147483647i), global1[_wgslsmith_index_u32(u_input.a.x, 5u)]), 0i), select(abs(vec4<i32>(1i, 1i, 1i, 1i)), -vec4<i32>(5250i, -1i, -38934i, 2147483647i), all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)))));
}

