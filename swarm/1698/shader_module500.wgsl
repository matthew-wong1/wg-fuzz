struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32 = 36444u;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    var var_0 = ~u_input.a ^ u_input.a;
    var var_1 = select(abs(firstLeadingBit(-_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, -37660i, 0i), vec3<i32>(u_input.a, 2147483647i, 1i), vec3<i32>(0i, 12570i, u_input.a)))), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, _wgslsmith_sub_i32(u_input.a, u_input.a), -21290i) >> (vec3<u32>(_wgslsmith_add_u32(u_input.b, 28910u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.c, 1u)), min(32816u, u_input.b)) % vec3<u32>(32u)), -_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(20949i, u_input.a, 15228i), vec3<i32>(-33461i, 48571i, 50774i)), vec3<i32>(u_input.a, 24241i, u_input.a) >> (vec3<u32>(23811u, u_input.c, u_input.c) % vec3<u32>(32u)))), arg_0.x);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(2085f + _wgslsmith_f_op_f32(1160f - 1173f)), 471f)) + -1000f));
    let var_3 = reverseBits(min(vec2<u32>(~19133u, u_input.b), vec2<u32>(~u_input.b, ~0u))) >> (countOneBits(vec2<u32>(u_input.b ^ u_input.b, u_input.b)) % vec2<u32>(32u));
    var_0 = var_1.x & (reverseBits((i32(-1i) * -1i) ^ var_1.x) | var_1.x);
    return var_1.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: bool) -> Struct_2 {
    var var_0 = false;
    let var_1 = arg_0.b;
    global1 = abs(4294967295u);
    var var_2 = _wgslsmith_div_vec3_i32(~min(vec3<i32>(~(-37891i), _wgslsmith_mult_i32(20969i, arg_0.e.x), 1i), vec3<i32>(9355i, arg_0.e.x << (11377u % 32u), func_3(vec2<bool>(arg_3, arg_0.c)))), _wgslsmith_mod_vec3_i32((select(vec3<i32>(8555i, -2147483647i, -39392i), vec3<i32>(u_input.a, arg_0.e.x, arg_0.d), vec3<bool>(arg_2.x, false, arg_0.c)) ^ vec3<i32>(50062i, u_input.a, u_input.a)) >> (~vec3<u32>(81581u, 1u, var_1.x) % vec3<u32>(32u)), vec3<i32>(~u_input.a, 31470i, firstLeadingBit(arg_0.d))));
    global0 = _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(4779i, arg_0.e.x)), ~(~vec2<i32>(~(-23033i), -10945i)));
    return Struct_2(_wgslsmith_div_u32(~_wgslsmith_div_u32(_wgslsmith_mult_u32(20469u, 1u), u_input.c), 5715u), vec3<i32>(firstLeadingBit(-1i), _wgslsmith_mult_i32(-1968i, -48039i << (_wgslsmith_sub_u32(17551u, arg_0.b.x) % 32u)), arg_0.d), Struct_1(_wgslsmith_sub_u32(~max(4294967295u, arg_0.a), _wgslsmith_add_u32(~var_1.x, 1u)), var_1, !(arg_0.d >= 1i), ~0i, arg_0.e), -(max(vec3<i32>(-1i, u_input.a, var_2.x), -vec3<i32>(0i, u_input.a, 2147483647i)) & reverseBits(vec3<i32>(-1i, arg_0.e.x, u_input.a))), arg_0);
}

fn func_4(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_2) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, 529f)));
    global1 = ~u_input.b;
    global0 = -arg_1.x;
    var var_1 = func_2(func_2(arg_2.c, vec2<u32>(arg_2.e.b.x, 0u), vec4<bool>((u_input.a != arg_1.x) == arg_2.e.c, true, any(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, arg_2.c.c))), !arg_2.e.c && select(arg_2.c.c, arg_2.e.c, false)), any(select(select(vec4<bool>(false, arg_2.c.c, arg_2.c.c, false), vec4<bool>(arg_2.c.c, arg_2.c.c, true, false), false), select(vec4<bool>(arg_2.c.c, arg_2.c.c, arg_2.e.c, false), vec4<bool>(arg_2.c.c, arg_2.e.c, true, false), false), !vec4<bool>(arg_2.e.c, true, true, false)))).c, ~(~(~arg_2.c.b) | abs(vec2<u32>(53642u, 111893u) >> (arg_2.c.b % vec2<u32>(32u)))), select(!(!(!vec4<bool>(arg_2.c.c, arg_2.e.c, false, true))), vec4<bool>(true, true, (arg_2.c.c && arg_2.c.c) || all(vec3<bool>(arg_2.c.c, false, arg_2.e.c)), arg_2.c.c), true), true);
    var var_2 = countOneBits(abs(max(~_wgslsmith_mult_u32(var_1.c.b.x, 1u), reverseBits(max(var_1.e.a, var_1.e.a)))));
    return max(_wgslsmith_mod_u32(~u_input.c >> (abs(arg_2.a) % 32u), func_2(func_2(Struct_1(u_input.b, vec2<u32>(43198u, 1u), var_1.e.c, var_1.d.x, vec2<i32>(u_input.a, 9271i)), vec2<u32>(72107u, 1u), !vec4<bool>(var_1.c.c, false, arg_2.c.c, true), any(vec2<bool>(false, true))).c, _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(arg_2.c.b, vec2<u32>(8936u, 0u)), vec2<u32>(59332u, arg_2.a) & vec2<u32>(28833u, 0u)), !vec4<bool>(var_1.e.c, false, false, var_1.e.c), var_1.e.c).a), 1u);
}

fn func_1(arg_0: Struct_2) -> i32 {
    var var_0 = select(select(vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(arg_0.c.c, false)), !(!arg_0.e.c)), vec2<bool>(true, true)), vec2<bool>(false, arg_0.c.c), vec2<bool>(true, arg_0.c.c));
    var var_1 = 1u;
    let var_2 = vec3<bool>(!(!var_0.x), all(select(vec4<bool>(all(vec3<bool>(arg_0.c.c, arg_0.e.c, false)), all(vec2<bool>(true, var_0.x)), arg_0.e.c, true), !select(vec4<bool>(true, arg_0.c.c, true, true), vec4<bool>(arg_0.e.c, true, true, false), false), select(select(vec4<bool>(arg_0.e.c, false, true, var_0.x), vec4<bool>(arg_0.c.c, var_0.x, var_0.x, true), var_0.x), !vec4<bool>(arg_0.e.c, arg_0.e.c, var_0.x, true), all(vec4<bool>(true, var_0.x, var_0.x, var_0.x))))), !all(vec4<bool>(true, 26851u < arg_0.c.a, any(vec4<bool>(var_0.x, false, false, arg_0.c.c)), true)));
    global0 = abs(-(u_input.a | -2147483647i));
    global1 = (4519u | (func_4(323f, vec4<i32>(-17809i, 41816i, -2147483647i, u_input.a), func_2(Struct_1(34135u, arg_0.e.b, arg_0.c.c, u_input.a, arg_0.d.yx), vec2<u32>(15989u, 35730u), vec4<bool>(var_2.x, true, false, arg_0.c.c), var_0.x)) << (min(0u, u_input.b) % 32u))) << ((~firstLeadingBit(~989u) << (countOneBits(arg_0.e.a) % 32u)) % 32u);
    return i32(-1i) * -(~_wgslsmith_mult_i32(~(-18874i), 29079i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1i;
    let var_1 = Struct_2(~_wgslsmith_sub_u32(u_input.c, _wgslsmith_add_u32(~u_input.b, 8625u)), firstTrailingBit(vec3<i32>(min(u_input.a, 2147483647i), -21943i, firstLeadingBit(18554i))) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-u_input.a, func_1(Struct_2(0u, vec3<i32>(-54216i, -44366i, 0i), Struct_1(u_input.b, vec2<u32>(u_input.b, 1u), true, u_input.a, vec2<i32>(u_input.a, u_input.a)), vec3<i32>(u_input.a, u_input.a, 0i), Struct_1(u_input.c, vec2<u32>(u_input.b, 1u), true, -11511i, vec2<i32>(u_input.a, u_input.a)))), ~u_input.a), -_wgslsmith_add_vec3_i32(vec3<i32>(429i, u_input.a, u_input.a), vec3<i32>(1309i, -25697i, u_input.a))), func_2(func_2(func_2(func_2(Struct_1(u_input.b, vec2<u32>(u_input.c, 45267u), false, u_input.a, vec2<i32>(u_input.a, u_input.a)), vec2<u32>(14683u, 38214u), vec4<bool>(true, true, true, true), false).e, firstLeadingBit(vec2<u32>(u_input.c, u_input.b)), vec4<bool>(true, true, true, true), all(vec2<bool>(false, true))).c, vec2<u32>(0u, 34839u), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), true), true).e, func_2(func_2(Struct_1(0u, vec2<u32>(4294967295u, 1u), true, -2147483647i, vec2<i32>(u_input.a, u_input.a)), max(vec2<u32>(1u, u_input.c), vec2<u32>(63706u, 4294967295u)), select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), false), any(vec3<bool>(false, true, true))).e, vec2<u32>(min(u_input.c, u_input.b), 33521u), vec4<bool>(true, true, true, true), func_2(Struct_1(u_input.c, vec2<u32>(u_input.b, 0u), false, -25819i, vec2<i32>(-5598i, u_input.a)), vec2<u32>(u_input.b, u_input.c), vec4<bool>(true, true, true, true), true).c.c).e.b, !vec4<bool>(all(vec2<bool>(false, true)), false, true, true), true).e, countOneBits(min(-vec3<i32>(u_input.a, u_input.a, u_input.a) | -vec3<i32>(33431i, u_input.a, 69223i), max(vec3<i32>(u_input.a, u_input.a, 0i), -vec3<i32>(u_input.a, -32917i, u_input.a)))), Struct_1(u_input.b, _wgslsmith_sub_vec2_u32(~(vec2<u32>(62346u, u_input.c) ^ vec2<u32>(0u, 48953u)), (vec2<u32>(0u, 27300u) | vec2<u32>(u_input.c, 1u)) & min(vec2<u32>(u_input.b, 19835u), vec2<u32>(595u, 33613u))), true, ~(~u_input.a), _wgslsmith_sub_vec2_i32(~vec2<i32>(u_input.a, -11310i), -_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(0i, 0i)))));
    let var_2 = var_1.d;
    var var_3 = ~abs(var_1.c.b.x) & 75463u;
    global0 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-27166i, -var_2.x, 0i), _wgslsmith_add_vec3_i32(abs(vec3<i32>(u_input.a, var_2.x, var_2.x)), func_2(var_1.c, var_1.c.b, vec4<bool>(false, var_1.c.c, var_1.e.c, var_1.c.c), true).d)), 1i);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1085f + 836f));
    var var_5 = vec4<bool>(all(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), var_1.e.c), vec3<bool>(var_1.e.c, true, false), !(!vec3<bool>(var_1.e.c, false, var_1.c.c)))), var_1.e.c, _wgslsmith_f_op_f32(step(-246f, var_4)) <= -700f, var_1.c.c);
    var var_6 = ~(vec3<u32>(~select(var_1.c.b.x, 0u, var_1.c.c), 1u, var_1.e.b.x) | _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(u_input.c, 9533u, 0u)), firstTrailingBit(vec3<u32>(u_input.b, var_1.a, u_input.b)), select(vec3<u32>(u_input.b, u_input.c, 39924u), vec3<u32>(u_input.b, 1u, var_1.e.b.x) | vec3<u32>(47343u, var_1.c.b.x, 4294967295u), !var_1.e.c)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

