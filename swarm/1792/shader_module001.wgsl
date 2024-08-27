struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, -1i);

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec3<bool>(true, false, false), false, vec2<i32>(-3274i, 11939i), vec3<u32>(0u, 0u, 1u)), Struct_1(vec3<bool>(true, true, true), true, vec2<i32>(1i, 2147483647i), vec3<u32>(19374u, 30444u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), false, vec2<i32>(2147483647i, 8285i), vec3<u32>(45366u, 24109u, 25963u)), Struct_1(vec3<bool>(true, true, true), false, vec2<i32>(2147483647i, -34679i), vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, false, true), true, vec2<i32>(28327i, 2147483647i), vec3<u32>(87192u, 1u, 0u)), Struct_1(vec3<bool>(true, false, true), true, vec2<i32>(6216i, -17368i), vec3<u32>(0u, 109040u, 108047u)));

var<private> global2: vec2<i32>;

var<private> global3: Struct_1;

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_1;
    global4 = ~_wgslsmith_mod_vec4_u32(max(vec4<u32>(~global3.d.x, u_input.a, abs(0u), _wgslsmith_mod_u32(0u, u_input.c)), (vec4<u32>(20145u, global3.d.x, 0u, 35734u) >> (vec4<u32>(80893u, 33090u, 30604u, global3.d.x) % vec4<u32>(32u))) >> (vec4<u32>(global3.d.x, 1u, 34110u, global4.x) % vec4<u32>(32u))), vec4<u32>(~var_0.d.x | ~var_0.d.x, 0u, _wgslsmith_div_u32(26384u, reverseBits(u_input.a)), 1u));
    global4 = abs(~(~vec4<u32>(global4.x ^ global3.d.x, ~var_0.d.x, ~arg_1.d.x, 1u)));
    var var_1 = abs(-(~vec3<i32>(arg_1.c.x, -global2.x, -75343i)));
    var var_2 = arg_2;
    return global3.a;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = select(true || !global3.a.x, true, false);
    global3 = Struct_1(select(!func_3(all(vec2<bool>(true, false)), arg_0, _wgslsmith_f_op_f32(round(arg_1.x))), arg_0.a, vec3<bool>(any(vec2<bool>(var_0, false)), global3.a.x, arg_0.a.x)), true, vec2<i32>(firstTrailingBit(global0.x), u_input.b), arg_0.d);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(924f, -421f, arg_1.x, 667f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.x, -248f, 1747f, arg_1.x)))))), vec4<f32>(_wgslsmith_f_op_f32(select(arg_1.x, -831f, _wgslsmith_f_op_f32(sign(arg_1.x)) != 169f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_1.x) - arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x))), _wgslsmith_f_op_f32(-arg_1.x)));
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~(~1690u)) >> ((~(~1u) ^ ~global4.x) % 32u), global3.d.x ^ global4.x, 37476u), 6u)];
    var var_3 = Struct_1(arg_0.a, true, var_2.c, vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global4.x, 59260u, u_input.c)), _wgslsmith_sub_vec3_u32(var_2.d, vec3<u32>(1u, u_input.c, 4538u))), firstLeadingBit(0u)), firstLeadingBit(~4294967295u ^ _wgslsmith_mod_u32(4294967295u, global3.d.x)), firstLeadingBit(64050u)));
    return global1[_wgslsmith_index_u32((_wgslsmith_mult_u32(var_2.d.x, 0u) << (countOneBits(var_2.d.x) % 32u)) << (~_wgslsmith_dot_vec2_u32(var_3.d.yy, var_3.d.xy) % 32u), 6u)];
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(global3.d.x), 6u)];
    let var_1 = vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(abs(global4.xx ^ vec2<u32>(global4.x, 57673u)), var_0.d.zz)), 1u, global4.x, 1u);
    let var_2 = Struct_1(!(!var_0.a), var_0.a.x, countOneBits(-(~u_input.d)), var_1.wxy);
    var var_3 = var_2.b;
    var_0 = func_2(Struct_1(func_3(true, func_2(global1[_wgslsmith_index_u32(global4.x, 6u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(962f, -1990f, -317f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(211f)))), arg_0.b, select(_wgslsmith_div_vec2_i32(~var_0.c, abs(vec2<i32>(var_0.c.x, 2147483647i))), arg_0.c, func_3(true, func_2(Struct_1(arg_0.a, arg_0.b, vec2<i32>(-5476i, 65900i), var_0.d), vec3<f32>(882f, 954f, 100f)), -1000f).zz), max(vec3<u32>(max(var_1.x, var_0.d.x), 35264u, 4294967295u), var_1.yxz)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(1262f)), _wgslsmith_f_op_f32(f32(-1f) * -2386f), _wgslsmith_f_op_f32(ceil(-640f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1000f, -813f, 1425f), vec3<f32>(-1445f, 1612f, -1157f))))))));
    return ~_wgslsmith_mult_u32(~reverseBits(arg_0.d.x << (1u % 32u)), 79234u);
}

fn func_1() -> vec4<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a, 6u)];
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(func_4(func_2(Struct_1(global3.a, !global3.a.x, _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, 5324i), global0.xz), global3.d), vec3<f32>(-813f, 591f, -459f))), _wgslsmith_sub_u32(~(~global4.x) << (27111u % 32u), 11963u ^ _wgslsmith_div_u32(25706u, func_4(Struct_1(vec3<bool>(global3.a.x, var_0.a.x, var_0.b), false, u_input.d, global3.d))))), 6u)];
    global4 = select((_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global4.x, var_0.d.x, 4294967295u), vec4<u32>(u_input.e, 371u, var_0.d.x, var_1.d.x)) << (reverseBits(countOneBits(vec4<u32>(4294967295u, global4.x, global4.x, u_input.c))) % vec4<u32>(32u))) | ~reverseBits(countOneBits(vec4<u32>(1682u, 40973u, var_0.d.x, global3.d.x))), vec4<u32>(global3.d.x, global3.d.x, var_0.d.x, func_2(global1[_wgslsmith_index_u32(countOneBits(var_0.d.x) >> (func_2(global1[_wgslsmith_index_u32(60042u, 6u)], vec3<f32>(181f, 162f, -1609f)).d.x % 32u), 6u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-677f, -736f, 1059f) * vec3<f32>(-261f, 238f, -508f)))).d.x), any(!vec4<bool>(true && global3.a.x, true, var_0.a.x, !var_0.a.x)));
    let var_2 = 1197f;
    global3 = global1[_wgslsmith_index_u32(func_2(func_2(func_2(global1[_wgslsmith_index_u32(reverseBits(var_0.d.x), 6u)], _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(410f, 121f, 452f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_2, 1431f), _wgslsmith_f_op_f32(var_2 * -475f), _wgslsmith_f_op_f32(step(-1272f, 879f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -617f), -340f, _wgslsmith_f_op_f32(var_2 * 1000f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1329f, var_2, 671f))))))).d.x, 6u)];
    return select(vec4<bool>(true, !(true && all(global3.a)), true && var_1.b, (true | (4294967295u != global3.d.x)) | var_1.b), !(!vec4<bool>(true, any(vec4<bool>(false, true, var_1.a.x, false)), all(vec2<bool>(var_0.a.x, false)), global3.b)), func_3(all(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_0.b, var_1.a.x, false), vec4<bool>(var_0.b, global3.a.x, global3.a.x, global3.a.x), var_0.a.x), true)), Struct_1(var_1.a, !global3.b, _wgslsmith_sub_vec2_i32(var_1.c, var_0.c) >> (global3.d.zx % vec2<u32>(32u)), _wgslsmith_mod_vec3_u32(var_1.d, vec3<u32>(global4.x, 15176u, global3.d.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) + _wgslsmith_div_f32(var_2, -638f))))).x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, false, global3.b, !select(global3.b, global3.a.x, true)), select(vec4<bool>(true, true || global3.b, true, false), select(vec4<bool>(false, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(global3.b, global3.a.x, true, false), vec4<bool>(global3.b, false, false, global3.b)), vec4<bool>(global3.b, true, global3.b, false)), vec4<bool>(!global3.b, any(vec3<bool>(false, global3.a.x, global3.a.x)), global3.a.x, global3.b)), false), !func_1(), all(select(select(vec3<bool>(false, global3.b, global3.b), vec3<bool>(false, false, true), global3.a), vec3<bool>(true, any(global3.a), !global3.a.x), global3.a)));
    let var_1 = Struct_1(!var_0.wwx, global3.d.x != (_wgslsmith_dot_vec2_u32(~global4.xz, ~vec2<u32>(u_input.e, 26631u)) ^ ~(~u_input.c)), ~vec2<i32>(_wgslsmith_div_i32(-1i, ~global2.x), global2.x), ~_wgslsmith_div_vec3_u32(global4.xxy, vec3<u32>(global4.x, reverseBits(global3.d.x), firstTrailingBit(53227u))));
    var var_2 = Struct_1(func_2(global1[_wgslsmith_index_u32(global3.d.x, 6u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(185f, -1531f, 2363f) * vec3<f32>(-1169f, -1000f, -746f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(672f, 1540f, 312f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1462f, -1166f, 284f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(799f, -1045f, -1924f), vec3<f32>(-1137f, 184f, 583f), var_0.x))))).a, !((global4.x >> (1u % 32u)) >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(var_1.d, vec3<u32>(u_input.a, 1u, 68521u)), global3.d.x << (56571u % 32u), _wgslsmith_sub_u32(var_1.d.x, 0u))), -(firstLeadingBit(min(global0.yz, var_1.c)) | vec2<i32>(countOneBits(-2012i), -var_1.c.x)), ~vec3<u32>(~_wgslsmith_div_u32(4294967295u, u_input.a), global3.d.x, global3.d.x));
    global2 = vec2<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(firstLeadingBit(~vec2<i32>(global3.c.x, var_1.c.x)), ~_wgslsmith_div_vec2_i32(u_input.d, global0.zz)), max(_wgslsmith_mult_i32(global2.x, global2.x), firstTrailingBit(var_1.c.x))), global0.x);
    let var_3 = _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(_wgslsmith_dot_vec3_u32(firstLeadingBit(global4.zxx), global3.d)), 1u, 47636u, 3666u), max(_wgslsmith_div_vec4_u32(vec4<u32>(1u, global4.x, global3.d.x, 0u) ^ vec4<u32>(global3.d.x, global3.d.x, u_input.e, 67807u), ~vec4<u32>(global3.d.x, 24423u, var_2.d.x, global3.d.x)) << (min(firstLeadingBit(vec4<u32>(4294967295u, global3.d.x, var_1.d.x, var_1.d.x)), vec4<u32>(var_1.d.x, 81510u, 35084u, global4.x)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(global3.d.x, global3.d.x, 4294967295u, 50514u) << (~vec4<u32>(26279u, 27789u, global3.d.x, 79923u) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, 58377u, 4564u, global4.x))));
    global0 = min(countOneBits(_wgslsmith_add_vec3_i32(-vec3<i32>(0i, 14185i, var_2.c.x), abs(vec3<i32>(global3.c.x, 1i, -1i)))), ~(-_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.c.x, global0.x, global2.x), vec3<i32>(-2147483647i, global2.x, 2147483647i)), -vec3<i32>(44337i, global2.x, 0i))));
    global1 = array<Struct_1, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

