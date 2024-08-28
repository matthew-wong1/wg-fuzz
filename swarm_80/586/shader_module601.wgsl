struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: f32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(28764u, 99287u);

var<private> global1: array<Struct_1, 27>;

var<private> global2: vec3<u32> = vec3<u32>(31151u, 114719u, 0u);

var<private> global3: array<i32, 2>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    var var_0 = Struct_2(vec3<bool>(true, !all(vec3<bool>(true, true, true)), !any(vec3<bool>(true, false, false))), ~global0.x, vec2<u32>(firstTrailingBit(_wgslsmith_div_u32(~u_input.b, global2.x)), global0.x), vec2<i32>(i32(-1i) * -(global3[_wgslsmith_index_u32(27838u, 2u)] | 32575i), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.a.x, 15297i), -15754i) & -1i));
    var var_1 = 0i;
    global1 = array<Struct_1, 27>();
    let var_2 = true;
    var var_3 = Struct_3(1f, 0i, _wgslsmith_clamp_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.b, 2u)] ^ (u_input.a.x >> (50805u % 32u)), u_input.a.x, var_0.d.x << (1098u % 32u)), countOneBits(vec3<i32>(var_0.d.x, global3[_wgslsmith_index_u32(global0.x, 2u)], -10232i)) & vec3<i32>(firstTrailingBit(u_input.a.x), abs(-2147483647i), select(4750i, -2147483647i, false)), -vec3<i32>(countOneBits(0i), u_input.a.x, 2147483647i)));
    return var_2;
}

fn func_2(arg_0: bool) -> f32 {
    let var_0 = Struct_2(vec3<bool>(true, !any(vec4<bool>(false, false, false, arg_0)), func_3()), _wgslsmith_mult_u32(4645u, ~reverseBits(~global0.x)), vec2<u32>(~u_input.c.x, global0.x), u_input.a.xz);
    global0 = firstLeadingBit(vec2<u32>(max(var_0.b, 1114u), select(~(~4294967295u), u_input.c.x, true)));
    let var_1 = global2.x;
    var var_2 = var_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-1110f, -521f)), _wgslsmith_f_op_f32(min(-550f, 129f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1094f, 272f))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.x));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec3<i32>) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(487f + _wgslsmith_f_op_f32(min(-671f, -222f))), _wgslsmith_f_op_f32(func_2(true)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), ~_wgslsmith_div_i32(~(-24512i), abs(global3[_wgslsmith_index_u32(0u, 2u)])), vec3<i32>(arg_2.x, _wgslsmith_clamp_i32(1i, arg_2.x, -(~0i)), -(_wgslsmith_sub_i32(2147483647i, u_input.a.x) ^ abs(24588i))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(-152f * var_0.a)), ~_wgslsmith_dot_vec2_i32(-_wgslsmith_add_vec2_i32(var_0.c.yy, vec2<i32>(-82931i, 2147483647i)), abs(u_input.a.yz)), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(-2796i, arg_1, -15385i), u_input.a) << ((vec3<u32>(16797u, 2356u, u_input.b) | vec3<u32>(116828u, 11813u, 13738u)) % vec3<u32>(32u))) & (abs(arg_2) & -vec3<i32>(var_0.b, global3[_wgslsmith_index_u32(u_input.c.x, 2u)], 2147483647i)));
    global3 = array<i32, 2>();
    var var_1 = firstLeadingBit(-(_wgslsmith_mod_vec2_i32(arg_2.xz, vec2<i32>(12898i, -2147483647i)) ^ -u_input.a.zx)) >> (~vec2<u32>(min(~20921u, 0u), _wgslsmith_dot_vec2_u32(~u_input.c.zx, vec2<u32>(global2.x, global0.x))) % vec2<u32>(32u));
    let var_2 = abs(firstLeadingBit(max(arg_2, var_0.c)));
    return select(select(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, false, all(vec3<bool>(false, false, false))), select(vec4<bool>(true, false, false, any(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false)), false)), !(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), true)), vec4<bool>(_wgslsmith_add_u32(0u, u_input.c.x << (0u % 32u)) < max(1u, ~u_input.c.x), !(_wgslsmith_f_op_f32(-var_0.a) > _wgslsmith_f_op_f32(sign(var_0.a))), select(any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(-var_0.a) >= -1448f, true), any(vec2<bool>(true, true))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: bool) -> StorageBuffer {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(round(-223f)), reverseBits(22234i), u_input.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.d, -803f, 199f, var_0.a), vec4<f32>(arg_1.d, var_0.a, arg_1.d, -1207f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a, -639f, -1522f)), true)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1182f, -2145f, 130f, 631f))), vec4<f32>(-1569f, -1392f, arg_1.d, 1094f), select(arg_1.a.x, false, false))))))));
    let var_2 = Struct_3(var_1.x, -13802i, vec3<i32>(global3[_wgslsmith_index_u32(~firstTrailingBit(1u), 2u)] << (0u % 32u), ~_wgslsmith_add_i32(firstLeadingBit(var_0.b), _wgslsmith_div_i32(1i, 1i)), -firstTrailingBit(_wgslsmith_dot_vec3_i32(var_0.c, vec3<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 2u)], u_input.a.x, 54530i)))));
    global2 = ~countOneBits(vec3<u32>(arg_1.c.a, ~arg_0.a >> (abs(12071u) % 32u), global2.x));
    var var_3 = var_2;
    return StorageBuffer(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, global3[_wgslsmith_index_u32(arg_0.a, 2u)]), var_3.b, -u_input.a.x, i32(-1i) * -8560i), _wgslsmith_sub_vec4_i32(min(vec4<i32>(-16485i, 1i, -10843i, 2147483647i), vec4<i32>(-2147483647i, var_0.c.x, var_0.b, var_2.c.x)), reverseBits(vec4<i32>(var_0.c.x, 63089i, -10718i, -1i)))), vec4<i32>(var_2.c.x, 0i, -2147483647i, ~(-32317i)) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(12510u, 4294967295u, arg_0.a, 17583u), vec4<u32>(arg_0.a, arg_0.a, 12037u, global2.x))) % vec4<u32>(32u))), ~global2.x, ~countOneBits(_wgslsmith_clamp_u32(~global0.x, ~arg_1.c.a, ~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1079f)), -1779f)) * _wgslsmith_f_op_f32(-189f + _wgslsmith_f_op_f32(sign(-121f))));
    global2 = ~_wgslsmith_mod_vec3_u32(countOneBits(u_input.c), ~vec3<u32>(global0.x, reverseBits(0u), ~global0.x));
    let x = u_input.a;
    s_output = func_4(global1[_wgslsmith_index_u32(~4294967295u, 27u)], Struct_4(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), false), select(func_1(Struct_1(global0.x), 64831i, u_input.a), vec4<bool>(false, true, true, true), any(vec3<bool>(false, true, true))), u_input.a.x != min(u_input.a.x, -1i)), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), Struct_1(0u), var_0), all(func_1(global1[_wgslsmith_index_u32(45207u, 27u)], _wgslsmith_clamp_i32(-30531i, 25467i, u_input.a.x), u_input.a)) || func_3());
}

