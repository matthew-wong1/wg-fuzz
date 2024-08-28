struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
}

struct Struct_4 {
    a: f32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(4294967295u, 1u, 23185u);

var<private> global1: vec2<bool>;

var<private> global2: array<u32, 26>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_3) -> i32 {
    var var_0 = select(~min(~vec3<u32>(1u, 4294967295u, 4294967295u), ~vec3<u32>(global0.x, 23244u, global0.x) >> (~vec3<u32>(u_input.a, u_input.b, global2[_wgslsmith_index_u32(u_input.a, 26u)]) % vec3<u32>(32u))), vec3<u32>(19847u, 4294967295u, global2[_wgslsmith_index_u32(10110u, 26u)]), vec3<bool>(_wgslsmith_f_op_f32(round(-662f)) == _wgslsmith_f_op_f32(sign(-2089f)), _wgslsmith_dot_vec2_u32(global0.yx, firstTrailingBit(vec2<u32>(u_input.b, u_input.a))) >= global0.x, global1.x));
    return _wgslsmith_div_i32(-2383i, 1i);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec3<bool>) -> vec4<i32> {
    let var_0 = ~global0.yx;
    let var_1 = firstLeadingBit(_wgslsmith_add_i32(i32(-1i) * -24090i, ~firstTrailingBit(-1i)));
    global1 = arg_1.xz;
    global2 = array<u32, 26>();
    var var_2 = _wgslsmith_sub_i32(-22043i, select(var_1, _wgslsmith_sub_i32(var_1, ~func_3(arg_2.xx, -643f, Struct_3(vec3<i32>(2147483647i, -1i, 43363i), global1.x))), true));
    return _wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, ~20853i, -17457i, 2147483647i), vec4<i32>(firstLeadingBit(-1i), -var_1, 0i, 0i), select(select(vec4<bool>(arg_2.x, arg_1.x, arg_2.x, true), vec4<bool>(arg_1.x, false, true, false), false), vec4<bool>(arg_1.x, arg_2.x, false, true), !vec4<bool>(global1.x, true, arg_1.x, true))), abs(_wgslsmith_add_vec4_i32(vec4<i32>(var_1, -2147483647i, 2147483647i, -2147483647i) | vec4<i32>(0i, -1i, var_1, var_1), vec4<i32>(var_1, var_1, -2147483647i, 1i)))) & vec4<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(14786i, 24431i, -27777i)), select(vec3<i32>(var_1, -1i, 1i), select(vec3<i32>(23962i, var_1, 0i), vec3<i32>(-50496i, -37765i, 0i), arg_2.x), all(vec4<bool>(arg_2.x, arg_2.x, false, arg_1.x)))), firstLeadingBit((i32(-1i) * -1i) | _wgslsmith_clamp_i32(-26641i, 0i, var_1)), firstLeadingBit(-(~(-75903i))), -(~var_1));
}

fn func_1() -> Struct_4 {
    var var_0 = ~func_2(971f, !(!(!vec3<bool>(global1.x, global1.x, true))), select(!select(vec3<bool>(false, false, false), vec3<bool>(true, global1.x, true), vec3<bool>(true, global1.x, global1.x)), !vec3<bool>(global1.x, false, global1.x), true));
    var var_1 = 1i;
    var var_2 = vec4<u32>(select((3510u & _wgslsmith_mult_u32(global0.x, 43249u)) & ~(~1u), _wgslsmith_mod_u32(0u, countOneBits(_wgslsmith_mod_u32(22730u, global0.x))), global1.x), ~1u, u_input.a, u_input.b);
    return Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-568f))), 1f), countOneBits(~(-vec4<i32>(var_0.x, 4975i, -21329i, var_0.x))), Struct_1(select(select(vec3<bool>(true, false, global1.x), select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, global1.x), global1.x), vec3<bool>(global1.x, false, global1.x)), !select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(true, false, true), vec3<bool>(global1.x, global1.x, false)), select(select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, false, true), vec3<bool>(global1.x, true, false)), vec3<bool>(true, global1.x, true), false)), global0.x));
}

fn func_4(arg_0: Struct_4) -> Struct_2 {
    var var_0 = Struct_2(arg_0.c, Struct_1(vec3<bool>(all(vec3<bool>(false, true, arg_0.c.a.x)), global1.x, global1.x), ~(~77132u)), Struct_1(select(select(!arg_0.c.a, !arg_0.c.a, true), func_1().c.a, !arg_0.c.a), u_input.a), Struct_1(vec3<bool>(!select(true, true, arg_0.c.a.x), true, arg_0.b.x < _wgslsmith_sub_i32(arg_0.b.x, arg_0.b.x)), u_input.b), func_1().c);
    global0 = ~vec3<u32>(~var_0.c.b, _wgslsmith_dot_vec2_u32(global0.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), global0.yz)), abs(_wgslsmith_div_u32(global0.x, var_0.e.b & 30990u)));
    let var_1 = Struct_2(arg_0.c, func_1().c, Struct_1(vec3<bool>(arg_0.a > _wgslsmith_f_op_f32(-arg_0.a), false, !(global2[_wgslsmith_index_u32(var_0.a.b, 26u)] <= arg_0.c.b)), 0u >> (~global0.x % 32u)), var_0.a, func_1().c);
    var var_2 = Struct_3(_wgslsmith_add_vec3_i32(-arg_0.b.wyw, vec3<i32>(firstTrailingBit(func_2(-176f, var_1.a.a, var_1.a.a).x), _wgslsmith_mult_i32(abs(-49952i), _wgslsmith_dot_vec2_i32(vec2<i32>(36352i, arg_0.b.x), vec2<i32>(arg_0.b.x, -1i))), arg_0.b.x)), var_0.e.a.x);
    var var_3 = global0.x;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_i32((firstTrailingBit(2147483647i) >> ((u_input.a ^ global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 26u)], 26u)]) % 32u)) & 0i, -1i) ^ -2147483647i;
    var_0 = 1i;
    var var_1 = func_4(func_1());
    var var_2 = countOneBits(0u);
    global2 = array<u32, 26>();
    var var_3 = select(func_4(func_1()).c.a, vec3<bool>(!global1.x, !(4294967295u < _wgslsmith_sub_u32(var_1.e.b, global0.x)), 45446u >= _wgslsmith_div_u32(4294967295u, max(u_input.b, 13934u))), !var_1.d.a);
    global1 = var_1.c.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1080f - _wgslsmith_f_op_f32(round(-739f))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1490f * -1000f)))))), _wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0.x, 26u)], 26u)], 43075u), abs(vec3<u32>(global2[_wgslsmith_index_u32(u_input.a, 26u)], var_1.e.b, 1u))), _wgslsmith_sub_vec3_u32(~min(vec3<u32>(42486u, u_input.a, 61435u), vec3<u32>(global2[_wgslsmith_index_u32(21924u, 26u)], var_1.c.b, 1u)), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 32513u) | vec3<u32>(u_input.a, 0u, global2[_wgslsmith_index_u32(4294967295u, 26u)]), countOneBits(vec3<u32>(35408u, u_input.a, global0.x)))), vec3<u32>(abs(u_input.b), min(4294967295u, _wgslsmith_mult_u32(44290u, var_1.e.b)), ~1u ^ global0.x)), vec2<u32>(u_input.a, global0.x ^ ~(~1u)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -354f))), max(min(func_1().b.x, 71545i), -(~firstLeadingBit(-10434i))));
}

