struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(1000f, 1232f), vec2<f32>(-181f, -335f), vec2<f32>(1318f, 1239f), vec2<f32>(605f, -867f), vec2<f32>(-1240f, 1636f), vec2<f32>(1000f, -508f), vec2<f32>(498f, 802f), vec2<f32>(-1463f, -212f), vec2<f32>(-2135f, -295f), vec2<f32>(-2384f, -2006f), vec2<f32>(-289f, -543f), vec2<f32>(-492f, 712f));

var<private> global1: Struct_3 = Struct_3(Struct_2(vec2<bool>(false, true), Struct_1(vec2<i32>(-1i, i32(-2147483648)), 0u, vec3<u32>(44857u, 0u, 18965u)), Struct_1(vec2<i32>(16002i, -1i), 0u, vec3<u32>(43326u, 102719u, 57125u)), Struct_1(vec2<i32>(-25952i, -1i), 79743u, vec3<u32>(26934u, 4294967295u, 0u))), vec2<f32>(-1000f, -1000f));

var<private> global2: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec2<i32>(i32(-2147483648), 49477i), 48493u, vec3<u32>(1u, 35885u, 80561u)), Struct_1(vec2<i32>(0i, 8875i), 1u, vec3<u32>(1u, 50624u, 31786u)), Struct_1(vec2<i32>(1i, -1i), 1u, vec3<u32>(0u, 0u, 1u)));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(-global1.b.x);
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 9530u, 0u, global1.a.b.b), vec4<u32>(global1.a.b.b, global2.b.c.x, 14220u, 0u)), (vec4<u32>(u_input.b.x, 4294967295u, 28595u, 1u) ^ vec4<u32>(global1.a.c.b, global1.a.b.b, u_input.b.x, 19171u)) >> (min(vec4<u32>(global2.c.b, global2.b.b, 14718u, global1.a.c.c.x), vec4<u32>(1u, global2.b.b, 60415u, 56193u)) % vec4<u32>(32u))), ~(~vec4<u32>(global1.a.b.b, 1u, 44236u, 13350u))), _wgslsmith_sub_vec4_u32(~max(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, u_input.b.x), vec4<u32>(21675u, global2.b.c.x, global2.d.c.x, 49753u)), select(vec4<u32>(33938u, 66444u, u_input.b.x, 0u), vec4<u32>(u_input.b.x, global2.c.c.x, 0u, 1u), global2.a.x)), vec4<u32>(28203u, u_input.b.x, _wgslsmith_div_u32(4294967295u, 118246u) & global2.d.c.x, _wgslsmith_div_u32(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.b.x, global2.b.b)))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(global0[_wgslsmith_index_u32(0u, 12u)])) * global0[_wgslsmith_index_u32(~0u, 12u)])) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0))) - _wgslsmith_f_op_f32(733f - _wgslsmith_f_op_f32(f32(-1f) * -1013f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_2) -> vec2<i32> {
    global1 = Struct_3(arg_0.a, arg_1.xx);
    let var_0 = any(select(select(select(vec4<bool>(false, arg_2.a.x, global1.a.a.x, false), vec4<bool>(global1.a.a.x, arg_0.a.a.x, false, false), !arg_0.a.a.x), !vec4<bool>(true, arg_0.a.a.x, global1.a.a.x, true), select(select(vec4<bool>(arg_2.a.x, true, global1.a.a.x, global2.a.x), vec4<bool>(global1.a.a.x, global1.a.a.x, global2.a.x, true), arg_0.a.a.x), select(vec4<bool>(arg_2.a.x, false, true, false), vec4<bool>(false, true, global2.a.x, arg_2.a.x), vec4<bool>(arg_2.a.x, global1.a.a.x, true, global1.a.a.x)), select(vec4<bool>(false, false, arg_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, global2.a.x, false, global2.a.x), false))), select(vec4<bool>(true, false, true, false | global1.a.a.x), !vec4<bool>(true, false, arg_2.a.x, true), any(vec2<bool>(global1.a.a.x, true)) || true), !arg_0.a.a.x));
    return vec2<i32>(-2147483647i & global2.b.a.x, arg_2.b.a.x) << (~min(reverseBits(select(vec2<u32>(0u, arg_0.a.c.b), vec2<u32>(4294967295u, global1.a.d.c.x), true)), ~reverseBits(vec2<u32>(4294967295u, 16070u))) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<f32>, arg_1: bool, arg_2: u32) -> vec2<bool> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = global1.a;
    var var_1 = _wgslsmith_add_u32(var_0.d.c.x, ~50832u);
    var var_2 = Struct_3(global1.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))));
    var_2 = Struct_3(Struct_2(select(vec2<bool>(true, global2.a.x && true), vec2<bool>(arg_1, arg_1 == true), global1.a.a), Struct_1(-func_3(Struct_3(var_2.a, arg_0), vec3<f32>(global1.b.x, -1693f, global1.b.x), var_2.a), _wgslsmith_sub_u32(~1u, 18349u), vec3<u32>(firstTrailingBit(global2.d.b), ~arg_2, ~arg_2)), Struct_1(-vec2<i32>(global1.a.c.a.x, global1.a.c.a.x) | -u_input.a, _wgslsmith_mult_u32(reverseBits(0u), reverseBits(4294967295u)), global1.a.c.c & (vec3<u32>(1u, 0u, 0u) >> (vec3<u32>(1u, arg_2, global2.d.c.x) % vec3<u32>(32u)))), var_0.c), vec2<f32>(var_2.b.x, _wgslsmith_f_op_f32(-var_2.b.x)));
    return vec2<bool>(true, false);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = global1.b.x;
    global2 = Struct_2(select(vec2<bool>(true || all(vec3<bool>(true, arg_0.a.x, arg_0.a.x)), !func_2(global1.b, global2.a.x, u_input.b.x).x), !(!select(arg_0.a, global2.a, global1.a.a)), !(!select(global1.a.a.x, arg_0.a.x, true))), Struct_1(global1.a.b.a, ~(~firstTrailingBit(global1.a.c.b)), ~vec3<u32>(global1.a.d.c.x, 4294967295u, arg_0.c.b)), Struct_1(vec2<i32>(7099i, -(~global1.a.d.a.x)), select(abs(~12448u), 27970u, false), ~(~vec3<u32>(arg_0.d.c.x, 21963u, global1.a.c.c.x))), arg_0.d);
    var var_1 = -(~u_input.a);
    var var_2 = 255f;
    return Struct_2(!(!func_2(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b.x, 280f), global1.b)), global2.a.x, abs(global1.a.b.b))), arg_0.b, arg_0.d, global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1240f), _wgslsmith_f_op_f32(f32(-1f) * -164f)) + global1.b.x)), _wgslsmith_f_op_f32(round(-927f)));
    global2 = func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(func_1()), 22568u < u_input.b.x, 1u), global2.d, Struct_1(countOneBits(u_input.a), u_input.b.x, vec3<u32>(_wgslsmith_add_u32(global2.c.c.x, 0u), ~global1.a.d.b, global1.a.b.b)), global1.a.d));
    var var_1 = !(var_0.x <= var_0.x);
    global1 = Struct_3(global1.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(580f))) - _wgslsmith_f_op_f32(max(global1.b.x, global1.b.x))), global1.b.x));
    var var_2 = func_4(func_4(global1.a));
    global0 = array<vec2<f32>, 12>();
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 215f)))), _wgslsmith_f_op_f32(sign(global1.b.x)));
    let var_3 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(602f, _wgslsmith_f_op_f32(min(1013f, _wgslsmith_f_op_f32(-427f - 1238f))), !global2.a.x)), _wgslsmith_f_op_f32(var_0.x - -498f), var_0.x) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1155f * -161f)), 1074f, _wgslsmith_div_f32(global1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(1i, global2.d.c.zx, vec4<i32>(func_4(Struct_2(func_4(global1.a).a, func_4(Struct_2(vec2<bool>(true, var_2.a.x), Struct_1(var_2.b.a, 4599u, var_2.c.c), global1.a.c, global1.a.b)).c, func_4(Struct_2(vec2<bool>(true, global1.a.a.x), global1.a.c, global1.a.c, Struct_1(vec2<i32>(-2147483647i, global2.b.a.x), 4294967295u, vec3<u32>(4294967295u, 92891u, 4294967295u)))).d, func_4(global1.a).b)).c.a.x, global1.a.b.a.x, reverseBits(_wgslsmith_clamp_i32(func_4(global1.a).c.a.x, _wgslsmith_add_i32(global2.b.a.x, u_input.a.x), u_input.a.x)), _wgslsmith_div_i32(func_4(func_4(global1.a)).d.a.x, func_4(Struct_2(global2.a, Struct_1(vec2<i32>(u_input.c.x, global2.b.a.x), 13839u, global1.a.b.c), var_2.b, global1.a.c)).b.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, global1.b.x, global1.b.x, 1452f) * vec4<f32>(-1000f, 1457f, -396f, var_3.x)) + vec4<f32>(var_3.x, 146f, global1.b.x, 1150f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, -279f, -312f, var_0.x), vec4<f32>(791f, -344f, global1.b.x, global1.b.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global1.b.x, -193f, var_0.x) - vec4<f32>(var_3.x, var_3.x, -121f, -463f))))));
}

