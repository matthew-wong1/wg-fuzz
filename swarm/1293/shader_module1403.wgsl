struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(627f, 570f, 886f), vec3<f32>(-482f, 708f, 829f), vec3<f32>(2994f, -431f, 1916f), vec3<f32>(-118f, 797f, -1309f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    global0 = 1850i;
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.x, -508f))))), vec2<f32>(global1.x, global1.x));
    var var_0 = vec3<bool>(all(vec4<bool>(all(vec3<bool>(false, true, true)), any(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true))), false, true)), all(vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, 0i, -1i), vec4<i32>(-2147483647i, -1i, -1i, 25813i)) >= ~2233i, true, true)), all(vec4<bool>(true, true, true, true)));
    global2 = array<vec3<f32>, 4>();
    var_0 = vec3<bool>(all(!(!(!var_0.zz))), true, false);
    return select(select(vec4<bool>(var_0.x, !(!var_0.x), -404f > global1.x, any(vec4<bool>(var_0.x, true, var_0.x, true))), select(!vec4<bool>(false, false, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x), select(!vec4<bool>(var_0.x, var_0.x, true, var_0.x), !vec4<bool>(var_0.x, true, var_0.x, false), false)), true), vec4<bool>(false, true, true, var_0.x), true);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> i32 {
    global2 = array<vec3<f32>, 4>();
    var var_0 = arg_1;
    let var_1 = vec4<u32>(0u, u_input.a.x, ~(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x << (u_input.a.x % 32u), _wgslsmith_mult_u32(98734u, 26722u))), ~firstTrailingBit(~(~u_input.a.x)));
    global0 = var_0.b.b;
    var var_2 = func_3();
    return var_0.b.b;
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> bool {
    let var_0 = select(!vec3<bool>(true, true == func_3().x, any(vec4<bool>(false, false, true, false))), vec3<bool>(true, true, true), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false)), select(select(func_3().wxw, select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true)), true));
    return any(vec2<bool>(var_0.x, var_0.x));
}

fn func_1(arg_0: f32, arg_1: f32) -> vec4<f32> {
    let var_0 = !func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(min(114273i, 0i), reverseBits(1182i), _wgslsmith_dot_vec4_i32(vec4<i32>(-4357i, 42859i, -2147483647i, 29129i), vec4<i32>(33894i, 2147483647i, -1i, -2147483647i))), vec3<i32>(1i, func_2(vec3<f32>(1608f, -918f, -1000f), Struct_2(-771f, Struct_1(vec4<f32>(-3032f, arg_1, global1.x, arg_1), 0i, vec2<f32>(3370f, 658f), vec3<i32>(-1516i, 14331i, 1i)), arg_1, vec4<f32>(global1.x, -1957f, arg_1, -415f)), Struct_2(-404f, Struct_1(vec4<f32>(1000f, global1.x, arg_1, arg_1), -27790i, vec2<f32>(arg_0, arg_1), vec3<i32>(0i, 34185i, 0i)), 643f, vec4<f32>(arg_0, arg_0, global1.x, global1.x)), false), -44429i)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(global1.x, arg_1)), -1193f), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-542f, arg_0), vec2<f32>(-2135f, arg_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-792f, global1.x))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(round(global1.x)), _wgslsmith_f_op_f32(ceil(global1.x)), 1f, arg_1), _wgslsmith_div_i32(~(-2147483647i), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1, 1072f), vec2<f32>(global1.x, -682f)))), max(-vec3<i32>(-30333i, -60073i, -1i), _wgslsmith_div_vec3_i32(vec3<i32>(-96i, -39474i, 2147483647i), vec3<i32>(-19714i, 3871i, -2147483647i)))), vec4<u32>(u_input.a.x, ~(u_input.a.x | u_input.a.x), _wgslsmith_clamp_u32(~u_input.a.x, ~20756u, ~2477u), ~0u));
    let var_1 = ~firstLeadingBit(32235u);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-399f, 104f), _wgslsmith_div_f32(1532f, 150f), _wgslsmith_f_op_f32(arg_1 * arg_1), global1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -906f, arg_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(395f, 1040f)), _wgslsmith_f_op_f32(f32(-1f) * -2050f), 264f, 124f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_1, -895f, -2115f))))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(111f, arg_0, var_0)), -1000f, 30459u >= u_input.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-166f)) - -2204f))));
    var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + arg_0) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + -175f)), _wgslsmith_f_op_f32(f32(-1f) * -580f), 1f, -384f)));
    var var_3 = countOneBits(~5796i);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0)) - -1118f), 717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + 1036f)) * global1.x), -2044f);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = vec4<i32>(reverseBits(23215i), firstTrailingBit(2147483647i), func_2(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(63431u, 4u)]), Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1586f, false)), arg_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-946f, arg_3.c.x, arg_1.x)) * _wgslsmith_div_f32(870f, -272f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(arg_0.a, arg_0.a), vec4<f32>(399f, -741f, arg_3.c.x, arg_3.c.x))), Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.c.x))), arg_0, global1.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-arg_3.a.x), -861f, _wgslsmith_f_op_f32(round(arg_0.c.x)))), func_3().x), _wgslsmith_mod_i32((i32(-1i) * -2147483647i) | arg_3.d.x, max((arg_0.b << (56858u % 32u)) >> (_wgslsmith_add_u32(0u, 22631u) % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(arg_0.d.x, arg_0.d.x), ~arg_3.d.x))));
    global0 = -8120i;
    global0 = 0i;
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(4294967295u, 22705u)), u_input.a.x) << ((u_input.a.x >> (~_wgslsmith_dot_vec3_u32(u_input.a, u_input.a) % 32u)) % 32u), abs(abs(arg_2)), _wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), abs(u_input.a.x)));
    var var_2 = arg_0.b;
    return ~vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(~arg_2), 39307u), var_1.x, arg_2 >> (1u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-(-1i << (_wgslsmith_mult_u32(4294967295u, u_input.a.x) % 32u)));
    let var_0 = false;
    let var_1 = !(!(!((true & var_0) && var_0)));
    var var_2 = countOneBits(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(global1.x, global1.x)), vec4<f32>(global1.x, 1371f, 287f, 690f), true)), min(func_2(global2[_wgslsmith_index_u32(u_input.a.x, 4u)], Struct_2(global1.x, Struct_1(vec4<f32>(global1.x, 461f, global1.x, -923f), -1i, vec2<f32>(-862f, -672f), vec3<i32>(-2147483647i, -9099i, 1i)), 993f, vec4<f32>(global1.x, -856f, global1.x, 512f)), Struct_2(global1.x, Struct_1(vec4<f32>(-1384f, global1.x, 280f, -635f), -2147483647i, vec2<f32>(779f, global1.x), vec3<i32>(0i, 98436i, 9983i)), global1.x, vec4<f32>(global1.x, global1.x, -2509f, 1822f)), var_0), ~(-2147483647i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1837f)), vec2<f32>(559f, -531f))), ~vec3<i32>(1i, 1i, 1i)), select(!func_3().zww, func_3().zwy, vec3<bool>(true, true, true)), 5348u, Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, global1.x, global1.x, -888f))))), 1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)) + vec2<f32>(global1.x, 2138f)), abs(select(vec3<i32>(-2147483647i, 25171i, -12059i), vec3<i32>(-10317i, -42084i, -21099i), false)))));
    var var_3 = firstLeadingBit(var_2.xz);
    let var_4 = ~((max(reverseBits(var_2.xy), var_2.xy) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 49610u), vec2<u32>(4294967295u, var_3.x)) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(var_2.zx >> (vec2<u32>(var_2.x, u_input.a.x) % vec2<u32>(32u)), u_input.a.zx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(global1.x)), global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, global1.x, var_1 && var_0)) + -2066f), global1.x)), global1.x, firstLeadingBit(3089i));
}

