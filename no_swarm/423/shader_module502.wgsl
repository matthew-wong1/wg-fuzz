struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
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

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(true, vec3<i32>(-23811i, -1i, -41659i), true, 1109f), Struct_1(false, vec3<i32>(19897i, i32(-2147483648), i32(-2147483648)), true, -1000f), Struct_1(true, vec3<i32>(21498i, -2246i, i32(-2147483648)), true, -335f), Struct_1(false, vec3<i32>(0i, 2147483647i, 11136i), false, 689f), Struct_1(true, vec3<i32>(1116i, -24969i, -13843i), true, 1000f), Struct_1(false, vec3<i32>(-5065i, -1i, 62093i), true, -1264f), Struct_1(false, vec3<i32>(i32(-2147483648), 19462i, i32(-2147483648)), true, 112f), Struct_1(false, vec3<i32>(29236i, 0i, 2147483647i), true, -1106f), Struct_1(false, vec3<i32>(-26625i, i32(-2147483648), 31493i), true, 1000f), Struct_1(true, vec3<i32>(0i, 24547i, 0i), false, 460f), Struct_1(true, vec3<i32>(2147483647i, 0i, 32669i), false, 801f), Struct_1(false, vec3<i32>(2147483647i, 1i, -1i), false, -513f), Struct_1(false, vec3<i32>(13683i, -1i, -1i), false, 568f), Struct_1(false, vec3<i32>(-62515i, -45332i, 0i), true, -1449f), Struct_1(false, vec3<i32>(-1i, 1i, -1i), true, -979f), Struct_1(true, vec3<i32>(-1692i, -1i, -14005i), false, 325f), Struct_1(false, vec3<i32>(i32(-2147483648), 15228i, 37691i), true, 121f), Struct_1(false, vec3<i32>(-39848i, 51166i, -2513i), false, -852f), Struct_1(false, vec3<i32>(2147483647i, -1i, 0i), false, -512f));

var<private> global1: Struct_1 = Struct_1(true, vec3<i32>(0i, -10345i, -10887i), true, 1000f);

var<private> global2: Struct_1 = Struct_1(true, vec3<i32>(31822i, 1i, -1i), true, 928f);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.d, arg_2, global3.d, -559f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d, -1000f, arg_0.d, arg_0.d) - vec4<f32>(148f, 1500f, arg_0.d, -250f)))) * vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(958f)))), _wgslsmith_f_op_f32(abs(arg_0.d)), _wgslsmith_f_op_f32(-arg_0.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1000f)))))));
    global1 = Struct_1(true, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b, global3.b), vec3<i32>(global1.b.x, -1i, global3.b.x)), 0i, global3.b.x) ^ _wgslsmith_div_vec3_i32(~arg_0.b, vec3<i32>(_wgslsmith_clamp_i32(2321i, -2147483647i, 0i), firstTrailingBit(0i), arg_0.b.x)), any(!(!vec4<bool>(true, true, global2.c, global2.c))), -178f);
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> bool {
    let var_0 = Struct_1(arg_0.c, _wgslsmith_sub_vec3_i32(u_input.d.yzy, vec3<i32>(~global2.b.x, global2.b.x, u_input.d.x)), global3.a, global1.d);
    let var_1 = Struct_1(all(!select(select(vec2<bool>(false, true), vec2<bool>(true, var_0.c), vec2<bool>(global1.c, true)), !vec2<bool>(global3.a, global2.a), !vec2<bool>(var_0.c, false))), abs(firstTrailingBit(u_input.d.yyz)), any(select(!(!vec2<bool>(global3.c, arg_0.c)), !vec2<bool>(true, global2.a), vec2<bool>(true, true))), 802f);
    let var_2 = arg_0;
    global3 = var_0;
    global2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(~max(vec4<u32>(35385u, 58445u, u_input.e.x, u_input.a), vec4<u32>(1u, u_input.e.x, 21966u, 4294967295u)), _wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(u_input.e.x, 0u, u_input.a, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, u_input.a))) & _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(max(vec4<u32>(u_input.c, u_input.e.x, u_input.a, 14406u), vec4<u32>(89295u, 0u, 21980u, u_input.c)), max(vec4<u32>(1u, u_input.e.x, u_input.a, u_input.c), vec4<u32>(60050u, 112832u, 11308u, u_input.e.x))), vec4<u32>(select(0u, u_input.c, false), 1u, ~71453u, 0u)), select(reverseBits(vec4<u32>(0u, ~u_input.e.x, u_input.a, 24019u >> (u_input.e.x % 32u))), _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c, 4294967295u, u_input.e.x), vec4<u32>(75429u, u_input.c, u_input.e.x, u_input.c)), countOneBits(vec4<u32>(u_input.c, u_input.a, 48501u, u_input.a)) << (~vec4<u32>(u_input.e.x, 4658u, 0u, u_input.e.x) % vec4<u32>(32u))), arg_0.a)), 19u)];
    return false;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-841f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.d - global1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + global3.d), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(756f)))))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-795f, _wgslsmith_f_op_f32(arg_0.d - -1191f), global2.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(666f, global3.d, global3.a)))), _wgslsmith_f_op_f32(623f - -857f), -110f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1674f, -324f, 1734f, arg_0.d))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1248f, arg_0.d, 105f, 1000f)))))));
    var var_1 = arg_0;
    var var_2 = 97953u;
    global0 = array<Struct_1, 19>();
    let var_3 = global2.b.x;
    return !func_4(Struct_1(true, global1.b, func_3(Struct_1(arg_0.a, global2.b, global3.a, 1000f), vec3<u32>(arg_1, 7481u, u_input.c), var_1.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1114f)), _wgslsmith_f_op_f32(abs(global2.d)))), -arg_0.b.x >> (36624u % 32u));
}

fn func_1() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(154f, -121f))));
    let var_1 = vec4<u32>(~u_input.e.x, u_input.c, ~_wgslsmith_sub_u32(~80316u, u_input.c), u_input.e.x);
    let var_2 = !(!(!select(!vec4<bool>(false, global3.a, true, false), !vec4<bool>(true, false, true, global2.a), vec4<bool>(true, global1.c, global2.c, true))));
    global1 = Struct_1(func_2(global0[_wgslsmith_index_u32(var_1.x, 19u)], var_1.x ^ max(46631u & u_input.e.x, 4294967295u)), _wgslsmith_div_vec3_i32(-(~select(vec3<i32>(-1i, 18519i, u_input.b), global1.b, global2.a)), u_input.d.xww), any(vec3<bool>(any(var_2.xxy), _wgslsmith_mod_i32(-9390i, global1.b.x) == (49964i >> (var_1.x % 32u)), !(global1.c | global2.a))), global3.d);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = !select(select(select(vec4<bool>(false, global1.c, global3.a, false), select(vec4<bool>(false, global2.c, global2.c, false), vec4<bool>(true, false, false, false), vec4<bool>(global2.c, global2.a, false, global3.c)), vec4<bool>(global3.a, global1.c, false, false)), !func_1(), select(vec4<bool>(true, true, false, global2.a), !vec4<bool>(true, false, global2.a, global1.c), vec4<bool>(global3.c, false, false, global2.c))), vec4<bool>(any(vec4<bool>(global1.a, global1.a, global1.c, true)), true, (0u << (0u % 32u)) > (4294967295u | u_input.e.x), func_1().x), !vec4<bool>(global2.c || global2.c, false, true, true));
    let var_2 = u_input.a;
    global3 = Struct_1(global1.c, firstTrailingBit(u_input.d.zxz), global1.a, global3.d);
    global1 = global0[_wgslsmith_index_u32(var_2 ^ var_2, 19u)];
    global1 = Struct_1(func_4(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_mult_i32(-5703i, 1i)) || global2.c, vec3<i32>(reverseBits(~(-1i)), ~_wgslsmith_div_i32(53826i, global3.b.x), global3.b.x) ^ -global2.b, !var_1.x, global3.d);
    var var_3 = global3.b.zz;
    let x = u_input.a;
    s_output = StorageBuffer(-(~(i32(-1i) * -1i)));
}

