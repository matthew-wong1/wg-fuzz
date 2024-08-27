struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 37603u;

var<private> global1: vec2<i32>;

var<private> global2: array<u32, 30>;

var<private> global3: Struct_1 = Struct_1(-14664i, true, vec4<i32>(1i, 0i, i32(-2147483648), 57137i));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> i32 {
    global3 = Struct_1(~global3.c.x, true, vec4<i32>(global3.c.x, 1i, 1i, firstTrailingBit(global3.a)));
    global1 = vec2<i32>(u_input.d & ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global1.x, 1i)), -vec2<i32>(1i, 0i)), -23484i << (u_input.a.x % 32u));
    global2 = array<u32, 30>();
    let var_0 = global3.c.xw;
    var var_1 = Struct_5(arg_2.x, Struct_2(global3.c.zxw, Struct_1(global3.a, false & global3.b, ~(u_input.c ^ vec4<i32>(u_input.d, var_0.x, -2147483647i, 17690i))), _wgslsmith_f_op_f32(-arg_1)));
    return 1i;
}

fn func_2(arg_0: vec3<f32>) -> f32 {
    var var_0 = firstLeadingBit(-(~vec2<i32>(func_3(vec4<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x, 0u, 13391u), arg_0.x, vec4<f32>(arg_0.x, 120f, arg_0.x, -112f)), _wgslsmith_mult_i32(2147483647i, u_input.e))));
    global2 = array<u32, 30>();
    var var_1 = Struct_3(~(abs(vec3<i32>(77686i, global3.a, global3.a) & vec3<i32>(7569i, 37904i, 1i)) & firstTrailingBit(u_input.c.zyz | u_input.c.xyx)), -_wgslsmith_add_vec2_i32(u_input.c.wx << (~u_input.a.yx % vec2<u32>(32u)), reverseBits(u_input.c.zy)), global3.b, countOneBits(u_input.b), global3.b && true);
    let var_2 = abs(vec4<i32>(-global3.a, _wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-var_0.x, -4060i)), -1i, -36944i));
    var var_3 = Struct_4(!select(vec2<bool>(select(var_1.c, true, false), global3.b), select(vec2<bool>(false, global3.b), select(vec2<bool>(global3.b, false), vec2<bool>(var_1.c, var_1.c), var_1.c), var_1.c), select(!vec2<bool>(global3.b, true), !vec2<bool>(var_1.c, var_1.e), vec2<bool>(global3.b, false))), vec3<i32>(-1i) * -(abs(vec3<i32>(0i, var_0.x, -1i)) ^ firstLeadingBit(var_2.wwy)), abs(vec2<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(var_1.d, u_input.a.x, 31943u, 4294967295u)), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(0u, 30u)], var_1.d, u_input.b)), 4294967295u)), Struct_1(var_2.x, 0u != _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(abs(4294967295u), 30u)], _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.d, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)), ~11690u), var_2), select(select(vec3<bool>(true, false, global3.b), !select(vec3<bool>(global3.b, false, global3.b), vec3<bool>(var_1.c, var_1.c, false), vec3<bool>(true, var_1.e, var_1.e)), select(vec3<bool>(global3.b, global3.b, global3.b), vec3<bool>(true, global3.b, global3.b), false)), select(select(!vec3<bool>(false, false, var_1.e), select(vec3<bool>(false, true, true), vec3<bool>(var_1.c, var_1.e, var_1.e), vec3<bool>(global3.b, global3.b, false)), !vec3<bool>(var_1.e, false, global3.b)), select(select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(true, var_1.e, global3.b), vec3<bool>(true, global3.b, false)), !vec3<bool>(false, var_1.c, false), vec3<bool>(global3.b, true, global3.b)), !any(vec4<bool>(true, false, false, false))), !all(vec3<bool>(true, false, global3.b))));
    return arg_0.x;
}

fn func_4(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: f32) -> vec3<i32> {
    global1 = arg_2.d.c.ww;
    global2 = array<u32, 30>();
    var var_0 = Struct_5(arg_1.x, Struct_2(~((vec3<i32>(arg_2.d.c.x, 2147483647i, -25673i) << (vec3<u32>(global2[_wgslsmith_index_u32(u_input.a.x, 30u)], global2[_wgslsmith_index_u32(1177u, 30u)], arg_2.c.x) % vec3<u32>(32u))) ^ global3.c.zzy), arg_2.d, _wgslsmith_f_op_f32(-1272f * arg_3)));
    var var_1 = !select(select(select(arg_2.a, vec2<bool>(var_0.b.b.b, arg_2.e.x), global3.b), vec2<bool>(!arg_2.d.b, true), -1902f > _wgslsmith_f_op_f32(arg_3 * -784f)), vec2<bool>(any(select(vec2<bool>(arg_2.e.x, var_0.b.b.b), arg_2.e.xy, true)), any(vec2<bool>(global3.b, true))), global3.b);
    global1 = vec2<i32>(-(~(-80065i)), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(countOneBits(abs(vec4<i32>(arg_2.b.x, -1i, global1.x, -33404i))), select(vec4<i32>(0i, global1.x, global3.c.x, -41476i), vec4<i32>(var_0.b.a.x, -26223i, u_input.d, -11723i) ^ var_0.b.b.c, global3.b)), countOneBits(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b.a.x, arg_2.d.c.x, u_input.d, 2147483647i), vec4<i32>(var_0.b.b.c.x, arg_2.b.x, -1i, -2147483647i)))));
    return _wgslsmith_add_vec3_i32(-min(~vec3<i32>(-62431i, 0i, u_input.e) ^ max(var_0.b.b.c.yww, vec3<i32>(-52107i, -91636i, 4993i)), ~(vec3<i32>(0i, 0i, global3.a) | vec3<i32>(u_input.e, -2147483647i, -64170i))), _wgslsmith_div_vec3_i32(~(~countOneBits(arg_2.d.c.yyw)), max((var_0.b.a << (u_input.a % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u)), var_0.b.a)));
}

fn func_1(arg_0: i32) -> Struct_4 {
    let var_0 = u_input.a;
    let var_1 = Struct_1(global3.a, true, -reverseBits(global3.c & vec4<i32>(global1.x, 0i, global1.x, arg_0)) << (~firstLeadingBit(~vec4<u32>(1u, 75017u, 0u, u_input.a.x)) % vec4<u32>(32u)));
    var var_2 = Struct_4(!(!vec2<bool>(var_1.b, !var_1.b)), vec3<i32>(_wgslsmith_add_i32(28925i, global3.c.x) >> (~14095u % 32u), 0i, ~global3.a ^ -1i) & -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c.x, -41966i, global1.x) | vec3<i32>(20238i, global1.x, -1i), var_1.c.ywz | var_1.c.xxy), countOneBits(var_0.xx), var_1, vec3<bool>(var_1.b, ~arg_0 > global1.x, all(!(!vec2<bool>(true, var_1.b)))));
    var_2 = Struct_4(vec2<bool>(any(!select(vec4<bool>(true, var_2.e.x, false, var_1.b), vec4<bool>(var_1.b, global3.b, false, var_2.a.x), var_1.b)), !global3.b), ~func_4(~1u, vec2<f32>(1307f, _wgslsmith_f_op_f32(func_2(vec3<f32>(-175f, -352f, -1400f)))), Struct_4(select(vec2<bool>(true, false), vec2<bool>(true, false), false), countOneBits(vec3<i32>(u_input.d, var_2.d.c.x, global1.x)), countOneBits(vec2<u32>(4294967295u, global2[_wgslsmith_index_u32(u_input.b, 30u)])), var_1, vec3<bool>(false, false, var_1.b)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(900f - -1000f))), firstTrailingBit(u_input.a.yz), Struct_1(~_wgslsmith_div_i32(-33435i, global3.c.x) >> (4294967295u % 32u), false, var_2.d.c), var_2.e);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) + -482f), Struct_2(abs(var_2.b), var_2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -565f)))));
    return Struct_4(!var_2.e.xx, var_2.d.c.wzw, var_2.c, Struct_1(min(_wgslsmith_sub_i32(var_1.a, global1.x), _wgslsmith_div_i32(global1.x, 13857i)), all(!select(vec4<bool>(false, false, var_1.b, var_2.d.b), vec4<bool>(global3.b, true, var_2.e.x, false), false)), select(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, -65425i, u_input.e, 1i) ^ var_1.c, _wgslsmith_mod_vec4_i32(var_3.b.b.c, var_1.c)), global3.c | _wgslsmith_add_vec4_i32(vec4<i32>(-1i, var_2.b.x, -1i, -36281i), vec4<i32>(1i, global1.x, var_2.d.c.x, 2147483647i)), !global3.b)), !select(select(!var_2.e, vec3<bool>(true, global3.b, var_3.b.b.b), var_2.e.x), !select(vec3<bool>(true, var_2.a.x, global3.b), var_2.e, var_3.b.b.b), (global1.x ^ arg_0) <= (-1i << (0u % 32u))));
}

fn func_5(arg_0: Struct_4) -> vec2<bool> {
    global0 = 69523u;
    var var_0 = Struct_2(vec3<i32>(-_wgslsmith_dot_vec4_i32(-u_input.c, arg_0.d.c | global3.c), ~(_wgslsmith_mult_i32(u_input.e, -49857i) >> (_wgslsmith_mod_u32(49418u, u_input.b) % 32u)), arg_0.b.x), func_1(25110i).d, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-584f, 253f)))));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(min(~global2[_wgslsmith_index_u32(47719u, 30u)], 1u), global2[_wgslsmith_index_u32(~1845u >> (global2[_wgslsmith_index_u32(4294967295u, 30u)] % 32u), 30u)], 4294967295u >> (u_input.b % 32u), global2[_wgslsmith_index_u32(u_input.b, 30u)]) ^ _wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44140u, global2[_wgslsmith_index_u32(0u, 30u)], 72023u, u_input.a.x), vec4<u32>(63807u, 43548u, global2[_wgslsmith_index_u32(arg_0.c.x, 30u)], global2[_wgslsmith_index_u32(1u, 30u)])), 30u)], _wgslsmith_clamp_u32(arg_0.c.x, 29963u, 40357u), ~0u), reverseBits(vec4<u32>(99163u, 0u, 19789u, u_input.a.x))), ~vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(arg_0.c, ~vec2<u32>(arg_0.c.x, 0u)), _wgslsmith_add_u32(abs(0u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_0.c, u_input.a.yx), 30u)]), 1u), (firstLeadingBit(~vec4<u32>(u_input.a.x, arg_0.c.x, 1u, arg_0.c.x)) >> (min(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 30u)], 4122u, 0u, global2[_wgslsmith_index_u32(1u, 30u)]), vec4<u32>(global2[_wgslsmith_index_u32(54881u, 30u)], u_input.b, u_input.a.x, 6084u)) % vec4<u32>(32u))) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 30u)], 30u)] << (u_input.a.x % 32u), 93456u, ~arg_0.c.x, ~arg_0.c.x));
    let var_2 = Struct_3(-_wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(var_0.a.x, 1i, arg_0.b.x), select(global3.c.wwz, u_input.c.wzw, all(vec2<bool>(arg_0.a.x, arg_0.d.b)))), vec2<i32>(var_0.a.x, _wgslsmith_add_i32(-var_0.b.c.x, ~u_input.e)) << (vec2<u32>(_wgslsmith_mult_u32(arg_0.c.x, select(arg_0.c.x, 71617u, arg_0.d.b)), _wgslsmith_dot_vec2_u32(~var_1.yy, ~vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 30u)], u_input.b))) % vec2<u32>(32u)), all(arg_0.e), var_1.x, var_0.b.b);
    global2 = array<u32, 30>();
    return select(vec2<bool>(arg_0.e.x, !(!(var_2.c == var_0.b.b))), !select(select(func_1(1i).e.zy, vec2<bool>(global3.b, true), arg_0.e.x), func_1(global3.c.x).e.xy, !(!arg_0.a.x)), all(arg_0.e.zz));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(-1i, all(!func_5(func_1(u_input.d))), u_input.c);
    let var_0 = vec3<u32>(_wgslsmith_add_u32(27823u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(select(102784u ^ max(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 30u)], 30u)], global2[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_add_u32(func_1(2147483647i).c.x, u_input.b | 50392u), !global3.b), 30u)], 30u)]), select(countOneBits(4294967295u), u_input.b, true) ^ ~(~118405u), 0u);
    let var_1 = !vec3<bool>(global3.b, all(select(func_1(2147483647i).e, !vec3<bool>(global3.b, global3.b, global3.b), false)), all(vec4<bool>(global3.b, false, false, global3.b)) | !(7433u != var_0.x));
    var var_2 = select(select(var_1.zx, func_1(global3.a).a, var_1.x), !(!var_1.xy), select(!(!var_1.xz), var_1.xy, !var_1.zx));
    global1 = vec2<i32>(-1i) * -global3.c.wz;
    var var_3 = 63688u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(var_0.x)), _wgslsmith_clamp_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_sub_i32(global1.x, u_input.d), -global3.c.x)), vec2<i32>(-1i, -2147483647i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, -1i), global3.c.wx), vec2<i32>(u_input.d, global1.x)), -_wgslsmith_mult_i32(-59650i, -1i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(619f + -691f)))))));
}

