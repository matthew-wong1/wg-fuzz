struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_2,
    c: Struct_3,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<u32, 6> = array<u32, 6>(39282u, 10431u, 4294967295u, 5299u, 0u, 0u);

var<private> global3: array<vec4<u32>, 14> = array<vec4<u32>, 14>(vec4<u32>(98548u, 40469u, 16024u, 0u), vec4<u32>(10933u, 0u, 4294967295u, 0u), vec4<u32>(0u, 1u, 1u, 4294967295u), vec4<u32>(121002u, 0u, 3990u, 28846u), vec4<u32>(0u, 55895u, 31112u, 1u), vec4<u32>(0u, 0u, 4294967295u, 47237u), vec4<u32>(19626u, 1u, 0u, 58729u), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(11334u, 13158u, 5488u, 41177u), vec4<u32>(0u, 1u, 1461u, 20304u), vec4<u32>(0u, 4788u, 4294967295u, 47691u), vec4<u32>(1u, 4294967295u, 0u, 51497u), vec4<u32>(5334u, 11557u, 0u, 96306u), vec4<u32>(88916u, 9428u, 0u, 16135u));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>, arg_1: f32, arg_2: i32, arg_3: u32) -> i32 {
    global0 = Struct_1(~max(vec3<u32>(~global0.e.x, 1u, 4294967295u), vec3<u32>(~global2[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(global0.a.x, 6u)], 0u, 49162u), ~1u)), arg_2, global0.c, global0.d, ~(~vec3<u32>(~1u, 32936u, u_input.b)));
    var var_0 = Struct_5(1000f, Struct_2(Struct_1(select(global0.e, _wgslsmith_clamp_vec3_u32(vec3<u32>(arg_3, u_input.b, 1u), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 6u)], arg_3, 1u), global0.e), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), 1i, -global0.c >> (~vec4<u32>(global0.a.x, global2[_wgslsmith_index_u32(arg_3, 6u)], global0.e.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-801f, global0.d.x), global0.d, vec2<bool>(false, true)))), vec3<u32>(1u, 70045u, ~1u)), global3[_wgslsmith_index_u32(global0.a.x, 14u)], max(_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(54728u, 6u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(89437u, 6u)], 6u)]), 14555u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, arg_3), vec2<u32>(u_input.b, global0.a.x)) % 32u), Struct_1(countOneBits(vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(1u, 6u)], 1u)), 1i, _wgslsmith_sub_vec4_i32(global0.c, -vec4<i32>(5937i, 5801i, arg_0.x, -4589i)), global0.d, abs(vec3<u32>(u_input.b, 29508u, global2[_wgslsmith_index_u32(u_input.b, 6u)]))), global0.d), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(15892u, _wgslsmith_clamp_u32(~(global0.a.x | 0u), ~2240u, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_3), vec2<u32>(4294967295u, arg_3)), 6u)])), 5u)], _wgslsmith_mod_vec4_i32(global0.c | _wgslsmith_add_vec4_i32(~global0.c, u_input.c), vec4<i32>(_wgslsmith_mod_i32(42850i & global0.b, arg_0.x), select(~(-32709i), -2147483647i, true), min(countOneBits(20316i), global0.b), _wgslsmith_mult_i32(2147483647i, global0.c.x ^ arg_2))), select(vec2<bool>(select(arg_2 == 1i, any(vec3<bool>(true, true, true)), true), (arg_1 < global0.d.x) == true), select(vec2<bool>(any(vec3<bool>(true, true, false)), false), vec2<bool>(true, true), all(vec3<bool>(false, false, false))), any(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-676f, _wgslsmith_f_op_f32(trunc(global0.d.x)), _wgslsmith_f_op_f32(sign(var_0.b.e.x)), arg_1))));
    global0 = Struct_1(vec3<u32>(~arg_3, ~global0.a.x, ~abs(_wgslsmith_sub_u32(4294967295u, global0.e.x))), reverseBits(2147483647i), vec4<i32>(_wgslsmith_add_i32(~1i, -63832i), var_0.c.c.x ^ max(global0.b, _wgslsmith_mult_i32(0i, 2147483647i)), _wgslsmith_sub_i32(-min(36373i, arg_2), -1i), _wgslsmith_clamp_i32(~(-2147483647i), -max(arg_0.x, var_0.c.a.d.b), _wgslsmith_mod_i32(select(arg_2, arg_0.x, var_0.e.x), -global0.b))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.c.a.a.d.x))) * _wgslsmith_f_op_f32(-var_0.c.a.d.d.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1084f))))), ~vec3<u32>(1u, firstTrailingBit(var_0.b.b.x), 32008u) << (vec3<u32>(39693u, min(abs(21826u), ~arg_3), abs(var_0.c.a.d.e.x & 0u)) % vec3<u32>(32u)));
    global0 = var_0.c.a.d;
    return -1i;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32) -> vec4<bool> {
    let var_0 = Struct_2(Struct_1(vec3<u32>(global0.e.x, ~max(1u, 14322u), u_input.b), func_3(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_1, 0i), ~global0.c.yy), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.x) + 177f), min(reverseBits(global0.b), global0.b & 49519i), 4294967295u), global0.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.d)) - vec2<f32>(_wgslsmith_f_op_f32(global0.d.x - 539f), global0.d.x)), (~global0.e | _wgslsmith_sub_vec3_u32(vec3<u32>(1u, global2[_wgslsmith_index_u32(39397u, 6u)], 15359u), global0.a)) << (vec3<u32>(~u_input.b, 4294967295u, 66950u >> (0u % 32u)) % vec3<u32>(32u))), select(firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 14u)], vec4<u32>(u_input.b, 0u, u_input.b, 14292u)), vec4<u32>(12711u, u_input.b, global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b), global3[_wgslsmith_index_u32(0u, 14u)] | vec4<u32>(0u, 0u, u_input.b, global2[_wgslsmith_index_u32(0u, 6u)]))), select(max(min(vec4<u32>(19241u, 4294967295u, u_input.b, 1u), vec4<u32>(28592u, 0u, global0.e.x, global0.e.x)), vec4<u32>(55484u, 90495u, 7080u, 52308u)), ~countOneBits(vec4<u32>(0u, 4294967295u, u_input.b, 16364u)), true), select(vec4<bool>(true, any(vec4<bool>(false, false, false, true)), true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), global2[_wgslsmith_index_u32(~select(~1u, _wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(global0.e.xy, global0.a.zx)), false), 6u)], Struct_1(_wgslsmith_sub_vec3_u32(global0.e >> (select(vec3<u32>(global0.a.x, 19023u, global2[_wgslsmith_index_u32(global0.e.x, 6u)]), vec3<u32>(global2[_wgslsmith_index_u32(1u, 6u)], global0.a.x, u_input.b), vec3<bool>(false, true, true)) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(~global0.e, vec3<u32>(1u, u_input.b, u_input.b))), arg_1, vec4<i32>(min(_wgslsmith_div_i32(global0.c.x, -2147483647i), ~(-6603i)), arg_0.x, -45593i, -13732i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-429f - 1000f), _wgslsmith_f_op_f32(max(global0.d.x, -415f)))), max(global0.a & global0.a, _wgslsmith_add_vec3_u32(countOneBits(global0.e), ~global0.e))), vec2<f32>(global0.d.x, -168f));
    let var_1 = var_0.d;
    let var_2 = arg_1 ^ (~(i32(-1i) * -arg_0.x) << (global0.e.x % 32u));
    var var_3 = _wgslsmith_f_op_vec2_f32(-global0.d);
    global1 = array<Struct_3, 5>();
    return vec4<bool>(true, true, !all(vec4<bool>(false, false, false, false)) | true, true);
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = !select(vec2<bool>(any(func_2(vec2<i32>(-36535i, 1i), 26464i)), all(vec3<bool>(true, true, true))), !func_2(u_input.c.yy, global0.b).ww, vec2<bool>(true, true));
    var_0 = func_2(-(arg_0.wz ^ ~select(arg_0.yx, global0.c.zz, var_0.x)), 30722i).xx;
    let var_1 = 2147483647i;
    global3 = array<vec4<u32>, 14>();
    let var_2 = Struct_2(Struct_1(vec3<u32>(firstTrailingBit(4294967295u) | u_input.b, (u_input.b | 6015u) >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(global0.a, vec3<u32>(1u, global2[_wgslsmith_index_u32(u_input.b, 6u)], global0.e.x))), countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a.xz, arg_0.ww), vec2<i32>(var_1, -42179i) >> (vec2<u32>(0u, global2[_wgslsmith_index_u32(u_input.b, 6u)]) % vec2<u32>(32u)))), _wgslsmith_clamp_vec4_i32(~select(vec4<i32>(27094i, -22785i, var_1, 23563i), vec4<i32>(2147483647i, global0.c.x, 2843i, -12341i), vec4<bool>(var_0.x, true, var_0.x, true)), firstTrailingBit(firstTrailingBit(vec4<i32>(-2147483647i, var_1, global0.b, arg_0.x))), _wgslsmith_mod_vec4_i32(select(global0.c, u_input.a, vec4<bool>(var_0.x, true, var_0.x, false)), _wgslsmith_add_vec4_i32(vec4<i32>(-49329i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(u_input.c.x, -52145i, var_1, -2147483647i)))), vec2<f32>(1354f, global0.d.x), reverseBits(global0.e)), ~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(global0.e.xz, global0.a.zx), ~(~u_input.b)), 14u)], u_input.b, Struct_1(~(_wgslsmith_sub_vec3_u32(vec3<u32>(28271u, 69206u, 11008u), vec3<u32>(0u, u_input.b, 50170u)) >> (~global0.a % vec3<u32>(32u))), arg_0.x, global0.c, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d.x)) - _wgslsmith_f_op_f32(sign(global0.d.x))), global0.d.x), firstTrailingBit(select(global0.a, ~global0.a, vec3<bool>(true, true, var_0.x)))), vec2<f32>(1206f, -2802f));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(firstTrailingBit(vec4<i32>(u_input.c.x, ~u_input.a.x, _wgslsmith_add_i32(global0.b, -2147483647i), -u_input.c.x)) ^ _wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-4754i, u_input.a.x, global0.b, u_input.c.x), reverseBits(vec4<i32>(global0.c.x, u_input.c.x, -25256i, u_input.c.x))), vec4<i32>(~u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2824i, -2147483647i), global0.c.zw), global0.b | u_input.a.x, global0.b)));
    var var_0 = Struct_4(Struct_2(Struct_1((global0.e & vec3<u32>(4294967295u, 4600u, u_input.b)) ^ global0.a, 0i, u_input.a, global0.d, global0.e), _wgslsmith_mult_vec4_u32(~(global3[_wgslsmith_index_u32(58069u, 14u)] ^ vec4<u32>(1u, u_input.b, 4294967295u, global2[_wgslsmith_index_u32(u_input.b, 6u)])), vec4<u32>(1u, u_input.b, func_1(u_input.c).a.x, global2[_wgslsmith_index_u32(~24969u, 6u)])), _wgslsmith_mod_u32(46485u, 1u), func_1(~vec4<i32>(global0.c.x, global0.b, global0.c.x, u_input.c.x) & vec4<i32>(18949i, global0.b, global0.c.x, -2147483647i)), _wgslsmith_f_op_vec2_f32(global0.d * vec2<f32>(global0.d.x, global0.d.x))), vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(round(-1539f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.d.x)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1200f, global0.d.x, false)))))));
    let var_1 = Struct_1(~global0.a, global0.b, global0.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(-647f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d.x, -751f) + _wgslsmith_div_f32(855f, 1193f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(var_0.b.x)), _wgslsmith_f_op_f32(-1805f * global0.d.x)))), vec3<u32>(~(_wgslsmith_dot_vec2_u32(vec2<u32>(35362u, 4221u), global0.a.zy) << (12636u % 32u)), ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(countOneBits(global0.a.x), abs(u_input.b)), 6u)], 4294967295u));
    global0 = Struct_1(~(vec3<u32>(global2[_wgslsmith_index_u32(0u, 6u)], 62135u, 6490u) | var_1.e), 61900i, _wgslsmith_div_vec4_i32(vec4<i32>(~u_input.a.x, u_input.c.x, ~2147483647i, -5407i) | var_0.a.d.c, _wgslsmith_add_vec4_i32(vec4<i32>(var_1.b, -var_1.c.x, ~(-1i), 1i), ~vec4<i32>(1i, var_1.b, -3104i, 10616i))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-916f, 719f) - vec2<f32>(1210f, var_1.d.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.a.d.x)), 637f)), firstLeadingBit(~(-2147483647i)) == var_1.c.x)), var_1.e);
    var var_2 = u_input.c.x;
    let var_3 = func_2(~global0.c.ww, 1i);
    global2 = array<u32, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(global3[_wgslsmith_index_u32(1u, 14u)]);
}

