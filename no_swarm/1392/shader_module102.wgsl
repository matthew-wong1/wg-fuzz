struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec4<u32> = vec4<u32>(31247u, 62395u, 95420u, 1u);

var<private> global2: Struct_1;

var<private> global3: array<bool, 22> = array<bool, 22>(false, false, true, true, true, true, false, true, false, false, true, true, false, true, false, false, true, true, true, true, false, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<u32>) -> f32 {
    let var_0 = -20515i;
    var var_1 = var_0;
    let var_2 = global2.a;
    let var_3 = Struct_1(global2.e.x == _wgslsmith_mod_i32(~select(-1i, 1i, global3[_wgslsmith_index_u32(4294967295u, 22u)]), -24937i), 1i, _wgslsmith_mod_vec3_u32(global2.c, global2.c), global2.d, abs(min(-global2.e, vec3<i32>(28573i, var_0, u_input.a.x))) | (u_input.b | u_input.b));
    global3 = array<bool, 22>();
    return -2082f;
}

fn func_2(arg_0: bool, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = ~global2.c;
    var var_1 = false;
    let var_2 = Struct_1(any(vec3<bool>(_wgslsmith_dot_vec3_i32(u_input.b, global2.e) == abs(global2.e.x), global2.a, true)), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.e.x, ~(-53166i), -global2.e.x) & ~vec3<i32>(0i, 0i, u_input.b.x), _wgslsmith_div_vec3_i32(global2.e, abs(_wgslsmith_mult_vec3_i32(global2.e, vec3<i32>(1i, -2147483647i, u_input.a.x))))), select(u_input.c, ~(~global1.zxy), vec3<bool>(all(vec3<bool>(arg_0, global2.a, global2.a)), global2.a, global3[_wgslsmith_index_u32(~(0u | global2.c.x), 22u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(1u, 1u))) * global2.d))), ~countOneBits((vec3<i32>(-1i, 1i, u_input.a.x) | global2.e) >> (u_input.c % vec3<u32>(32u))));
    let var_3 = select(!vec2<bool>(global2.a && !global3[_wgslsmith_index_u32(global2.c.x, 22u)], all(vec3<bool>(true, true, true))), vec2<bool>(true, all(!select(vec3<bool>(var_2.a, true, var_2.a), vec3<bool>(true, global3[_wgslsmith_index_u32(var_2.c.x, 22u)], global3[_wgslsmith_index_u32(2281u, 22u)]), arg_0))), !select(!select(vec2<bool>(arg_0, false), vec2<bool>(global3[_wgslsmith_index_u32(10513u, 22u)], global3[_wgslsmith_index_u32(7136u, 22u)]), false), !vec2<bool>(false, var_2.a), global2.a));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.d + arg_1.x)))))) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.d)))), true));
    return var_2;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<f32>) -> bool {
    let var_0 = func_2(all(select(!select(vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 22u)], false, true), vec3<bool>(true, false, arg_2.a), arg_2.a), select(select(vec3<bool>(arg_2.a, global2.a, global3[_wgslsmith_index_u32(global2.c.x, 22u)]), vec3<bool>(global2.a, true, false), global3[_wgslsmith_index_u32(global1.x, 22u)]), vec3<bool>(true, false, true), false), vec3<bool>(all(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], true, false)), !global2.a, !global3[_wgslsmith_index_u32(arg_2.c.x, 22u)]))), arg_3.yw);
    let var_1 = func_2(all(select(vec4<bool>(func_2(global3[_wgslsmith_index_u32(global1.x, 22u)], arg_1).a, true, arg_2.a, true), select(vec4<bool>(false, false, true, true), select(vec4<bool>(arg_2.a, global2.a, global3[_wgslsmith_index_u32(global1.x, 22u)], false), vec4<bool>(true, global3[_wgslsmith_index_u32(global1.x, 22u)], var_0.a, true), global2.a), 2898i < u_input.a.x), global3[_wgslsmith_index_u32(0u, 22u)])), arg_3.zy);
    global3 = array<bool, 22>();
    let var_2 = select(vec4<bool>(true, false, (656i == ~u_input.b.x) | !(-736f <= global2.d), any(!vec4<bool>(false, global3[_wgslsmith_index_u32(var_1.c.x, 22u)], false, var_0.a))), select(!(!vec4<bool>(arg_2.a, arg_2.a, var_1.a, var_1.a)), select(select(!vec4<bool>(global2.a, var_1.a, var_1.a, true), vec4<bool>(var_1.a, arg_2.a, global3[_wgslsmith_index_u32(4294967295u, 22u)], false), vec4<bool>(global2.a, global2.a, var_1.a, true)), !(!vec4<bool>(arg_2.a, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], true, false)), select(vec4<bool>(false, true, global3[_wgslsmith_index_u32(15854u, 22u)], false), vec4<bool>(false, false, var_1.a, false), vec4<bool>(false, var_0.a, true, global3[_wgslsmith_index_u32(global1.x, 22u)]))), select(select(vec4<bool>(arg_2.a, true, false, var_1.a), select(vec4<bool>(global3[_wgslsmith_index_u32(13727u, 22u)], true, true, true), vec4<bool>(var_1.a, var_1.a, true, true), var_1.a), !vec4<bool>(var_1.a, var_1.a, global3[_wgslsmith_index_u32(105162u, 22u)], true)), select(vec4<bool>(arg_2.a, false, global2.a, true), vec4<bool>(false, global2.a, var_1.a, false), global2.d > arg_3.x), vec4<bool>(any(vec4<bool>(false, var_1.a, global2.a, true)), var_0.a, !arg_2.a, any(vec2<bool>(var_0.a, false))))), true);
    global1 = _wgslsmith_clamp_vec4_u32((vec4<u32>(1u, _wgslsmith_clamp_u32(0u, var_0.c.x, var_1.c.x), 4294967295u, u_input.c.x) & vec4<u32>(global1.x, ~arg_2.c.x, ~var_1.c.x, var_0.c.x)) >> ((~vec4<u32>(arg_2.c.x, 24346u, arg_2.c.x, 3573u) << (vec4<u32>(39214u, global1.x, 0u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, var_0.c.x, 0u), var_1.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<u32>(73298u, 1u, func_2(global2.a, _wgslsmith_f_op_vec2_f32(max(arg_3.zz, arg_1))).c.x, 4294967295u) >> (~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 35189u, 36587u, global2.c.x), vec4<u32>(1u, 4294967295u, var_0.c.x, 1u)) % vec4<u32>(32u)), reverseBits(~_wgslsmith_sub_vec4_u32(select(vec4<u32>(1u, var_1.c.x, var_0.c.x, var_0.c.x), vec4<u32>(0u, 0u, arg_2.c.x, arg_2.c.x), true), vec4<u32>(4294967295u, 1u, u_input.c.x, u_input.c.x) >> (vec4<u32>(global2.c.x, 1u, arg_2.c.x, 41281u) % vec4<u32>(32u)))));
    return !(_wgslsmith_f_op_f32(ceil(arg_3.x)) != 593f);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(true, global3[_wgslsmith_index_u32(~7787u << (_wgslsmith_dot_vec4_u32(vec4<u32>(16656u, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(4294967295u, 75367u, u_input.c.x, 89713u)) % 32u), 22u)], func_4(max(3297i, global2.b), vec2<f32>(-300f, -1000f), func_2(global3[_wgslsmith_index_u32(57112u, 22u)], vec2<f32>(-383f, -392f)), vec4<f32>(-2072f, 504f, global2.d, global2.d))) == false, _wgslsmith_div_i32(~(-u_input.a.x), u_input.b.x), vec3<u32>(global1.x, ~(0u >> (func_2(true, vec2<f32>(global2.d, 640f)).c.x % 32u)), ~75877u), -328f, _wgslsmith_clamp_vec3_i32(global2.e, global2.e, func_2(all(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(1u, 22u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.d, -296f))))).e));
    global1 = vec4<u32>(global1.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(global2.c.x & ~global1.x, global2.c.x), 4294967295u >> (1u % 32u)), select(~global2.c.x, min(34609u, global2.c.x), true), ~(~global2.c.x));
    global3 = array<bool, 22>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(401f))))), _wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(614f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<u32>(u_input.c.x, 16745u))))))), func_2(!(!global2.a), vec2<f32>(_wgslsmith_f_op_f32(-var_0.d), _wgslsmith_f_op_f32(var_0.d + var_0.d))).d);
    let var_2 = Struct_1(138f <= _wgslsmith_f_op_f32(-var_1.x), firstLeadingBit(-u_input.a.x), vec3<u32>(_wgslsmith_div_u32(countOneBits(global1.x | global2.c.x), _wgslsmith_clamp_u32(abs(global1.x), 705u, 0u)), 35330u, _wgslsmith_add_u32(~firstTrailingBit(0u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(global2.c.x, 1u, u_input.c.x)), var_0.c.x))), global2.d, u_input.b);
    return Struct_1(false, -13250i, firstLeadingBit(~var_2.c), -513f, var_0.e);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = vec4<f32>(-1903f, global2.d, func_1().d, _wgslsmith_f_op_f32(min(-235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(628f - 946f), _wgslsmith_f_op_f32(global2.d - arg_0.d)))))));
    var var_1 = abs(vec2<i32>(-1i) * -(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.b, arg_0.b), vec2<i32>(-2147483647i, -27629i)) & (vec2<i32>(-23095i, -1i) | vec2<i32>(global2.b, 2147483647i))));
    let var_2 = global2.e.x;
    var var_3 = var_0.x;
    let var_4 = func_1();
    return arg_0;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    let var_0 = arg_0.d;
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.d), _wgslsmith_f_op_f32(floor(global2.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * var_0), arg_0.d));
    let var_2 = var_1.x;
    let var_3 = Struct_1(global3[_wgslsmith_index_u32(~2640u, 22u)], 2147483647i, firstTrailingBit(~(~countOneBits(arg_0.c))), 243f, _wgslsmith_sub_vec3_i32(u_input.b, vec3<i32>(_wgslsmith_sub_i32(~6447i, -2147483647i), 12117i, arg_0.e.x)));
    var var_4 = arg_0.d;
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    let var_0 = !(!vec4<bool>(all(select(vec2<bool>(false, global3[_wgslsmith_index_u32(arg_1.c.x, 22u)]), vec2<bool>(global2.a, false), vec2<bool>(false, false))), func_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(329f, arg_1.d))).a, true, !global2.a));
    var var_1 = -(2147483647i ^ func_6(Struct_1(all(var_0.wzw), -1i, ~global2.c, global2.d, countOneBits(global2.e))).e.x);
    var var_2 = arg_1.e.x;
    let var_3 = !select(vec3<bool>(!arg_1.a, arg_0.a, arg_0.a), select(select(vec3<bool>(global2.a, arg_1.a, arg_1.a), select(var_0.xxw, vec3<bool>(false, false, true), true), !global2.a), var_0.yzz, select(var_0.wxz, select(var_0.wwz, var_0.zyz, vec3<bool>(global3[_wgslsmith_index_u32(global1.x, 22u)], arg_1.a, true)), func_6(Struct_1(true, -2147483647i, vec3<u32>(arg_0.c.x, global1.x, 10413u), arg_2.x, vec3<i32>(u_input.b.x, global2.b, 1i))).a)), !(!(!vec3<bool>(var_0.x, false, global3[_wgslsmith_index_u32(arg_0.c.x, 22u)]))));
    let var_4 = func_5(Struct_1(var_3.x, _wgslsmith_add_i32(reverseBits(1i), abs(1i)), vec3<u32>(0u, ~global2.c.x, ~1547u) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(arg_0.c, arg_1.c)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-992f - _wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(-arg_2.x))), arg_1.e), vec3<bool>(func_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.d, 203f) * vec2<f32>(1000f, arg_1.d)))).a, arg_1.e.x == _wgslsmith_sub_i32(~2147483647i, -arg_1.e.x), all(!var_0)), arg_3);
    return ~_wgslsmith_mult_u32(~(~(4294967295u & global2.c.x)), _wgslsmith_add_u32(firstTrailingBit(33640u) | 1u, 8334u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<bool, 22>();
    var var_0 = vec2<bool>(false, all(vec2<bool>(all(select(vec4<bool>(global2.a, false, global3[_wgslsmith_index_u32(global2.c.x, 22u)], global2.a), vec4<bool>(global2.a, global3[_wgslsmith_index_u32(u_input.c.x, 22u)], global3[_wgslsmith_index_u32(0u, 22u)], true), vec4<bool>(global3[_wgslsmith_index_u32(0u, 22u)], false, global2.a, false))), true)));
    var var_1 = _wgslsmith_f_op_f32(min(-2046f, _wgslsmith_f_op_f32(min(-157f, _wgslsmith_f_op_f32(min(global2.d, 234f))))));
    global1 = vec4<u32>(func_7(func_6(func_5(func_1(), select(vec3<bool>(false, global2.a, true), vec3<bool>(true, true, false), var_0.x), _wgslsmith_f_op_f32(487f * -1860f))), func_6(func_2(!global3[_wgslsmith_index_u32(4294967295u, 22u)], _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.d, -649f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1394f, global2.d, -429f, global2.d), vec4<f32>(global2.d, -294f, 1288f, global2.d)) * _wgslsmith_div_vec4_f32(vec4<f32>(global2.d, 130f, global2.d, global2.d), vec4<f32>(global2.d, 1403f, global2.d, 1000f)))), 1520f), ~(~func_6(func_2(var_0.x, vec2<f32>(1024f, 600f))).c.x), global2.c.x, 1u);
    var var_2 = ~global2.e.x;
    var var_3 = func_6(func_1());
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-func_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.d, 471f))) + vec2<f32>(141f, global2.d))).d), global1.zz);
}

