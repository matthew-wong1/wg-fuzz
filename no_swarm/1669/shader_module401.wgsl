struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
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

var<private> global1: array<i32, 11> = array<i32, 11>(5959i, -1i, 2147483647i, -1i, 2870i, i32(-2147483648), -24860i, -32797i, 2147483647i, 1i, 0i);

var<private> global2: array<f32, 15> = array<f32, 15>(662f, -1137f, -209f, -111f, -690f, -1000f, -1154f, -1586f, 254f, 840f, -475f, -1321f, 727f, -2521f, 1690f);

var<private> global3: vec2<u32> = vec2<u32>(24939u, 1u);

var<private> global4: array<u32, 19> = array<u32, 19>(29568u, 0u, 4294967295u, 7270u, 4294967295u, 4294967295u, 1u, 14350u, 4294967295u, 1u, 72983u, 4294967295u, 1u, 18346u, 50226u, 0u, 4294967295u, 32001u, 1u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: f32, arg_1: bool) -> u32 {
    global1 = array<i32, 11>();
    var var_0 = Struct_1(~u_input.a, ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, global3.x, _wgslsmith_mult_u32(20565u, 102136u), ~global3.x), vec4<u32>(1u, ~u_input.b.x, ~u_input.b.x, 1u), _wgslsmith_add_vec4_u32(abs(u_input.b), u_input.b)), u_input.b);
    var var_1 = 180f;
    let var_2 = firstLeadingBit(~firstTrailingBit(select(2147483647i, u_input.a, false))) & -var_0.a;
    return reverseBits(var_0.c.x);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> vec2<u32> {
    global0 = 1i;
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(7662u, 15u)]) - _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3.x, 15u)], 1658f)));
    var var_2 = !arg_0.x;
    var_2 = true;
    return _wgslsmith_sub_vec2_u32(min(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(min(arg_1.b.zw, vec2<u32>(0u, global4[_wgslsmith_index_u32(74392u, 19u)])), _wgslsmith_clamp_vec2_u32(arg_1.c.xz, u_input.c, u_input.c)), u_input.b.zw), min(vec2<u32>(~83308u, 1329u), ~arg_1.b.xw)), arg_1.b.zw);
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: vec2<u32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(u_input.b, ~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, 37329u, arg_2.x), vec4<u32>(arg_2.x, u_input.c.x, global3.x, arg_2.x)), ~(~vec4<u32>(global4[_wgslsmith_index_u32(4294967295u, 19u)], u_input.b.x, global3.x, global3.x))), ~vec4<u32>(u_input.c.x, func_2(global2[_wgslsmith_index_u32(u_input.c.x, 15u)], arg_0.x), 0u, 1u) << (~_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(u_input.b, u_input.b), ~u_input.b) % vec4<u32>(32u)));
    global2 = array<f32, 15>();
    global3 = reverseBits(var_0.yw & ~func_3(vec3<bool>(arg_3, arg_0.x, true), Struct_1(2147483647i, u_input.b, vec4<u32>(6972u, u_input.b.x, 1927u, 4294967295u))));
    global2 = array<f32, 15>();
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_clamp_u32(func_2(1804f, arg_0.x), 1u, 0u)) >> ((4294967295u | func_3(!vec3<bool>(false, true, arg_0.x), Struct_1(2147483647i, var_0, var_0)).x) % 32u), 11u)], ~(~select(vec4<u32>(4294967295u, 99590u, var_0.x, 182u), vec4<u32>(arg_2.x, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 19u)], global3.x, u_input.b.x), vec4<bool>(arg_0.x, true, true, arg_0.x)) << (~(~vec4<u32>(global4[_wgslsmith_index_u32(arg_2.x, 19u)], 64883u, 642u, 4294967295u)) % vec4<u32>(32u))), max(~(var_0 << (var_0 % vec4<u32>(32u))), vec4<u32>(~global4[_wgslsmith_index_u32(1860u, 19u)], func_3(arg_0.xzx, Struct_1(1i, vec4<u32>(31198u, u_input.b.x, u_input.b.x, arg_2.x), vec4<u32>(4294967295u, arg_2.x, arg_2.x, var_0.x))).x, ~arg_2.x, ~1u)) << (_wgslsmith_sub_vec4_u32(var_0, u_input.b) % vec4<u32>(32u)));
    return -2147483647i;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = !vec4<bool>(all(vec2<bool>(true, true)) == !select(false, true, false), true, true, !(_wgslsmith_mod_u32(18862u, arg_3.b.x) < 50737u));
    global1 = array<i32, 11>();
    global1 = array<i32, 11>();
    var var_1 = vec4<bool>(false, any(!vec4<bool>(select(var_0.x, var_0.x, true), all(var_0.wwx), var_0.x | false, var_0.x)), !all(!vec3<bool>(var_0.x, var_0.x, true)), all(vec3<bool>(var_0.x, !any(var_0.zxw), any(select(vec2<bool>(true, false), vec2<bool>(true, var_0.x), false)))));
    var var_2 = Struct_1(arg_3.a, ~arg_1.b, _wgslsmith_div_vec4_u32(vec4<u32>(~(arg_2.c.x >> (arg_3.b.x % 32u)), ~_wgslsmith_sub_u32(arg_0.c.x, global3.x), 27400u, _wgslsmith_add_u32(~87520u, 0u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(arg_2.b), arg_1.c)));
    return Struct_1(_wgslsmith_div_i32(u_input.a << (~(~18637u) % 32u), _wgslsmith_div_i32(abs(~5544i), _wgslsmith_add_i32(arg_3.a >> (global4[_wgslsmith_index_u32(arg_1.b.x, 19u)] % 32u), _wgslsmith_mod_i32(-2147483647i, arg_2.a)))), firstLeadingBit(arg_1.b), arg_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(func_1(!select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(select(4294967295u, 3523u, false), 15u)]), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), u_input.b.yy), ~u_input.c), select(-10366i <= global1[_wgslsmith_index_u32(1u, 11u)], false, all(vec2<bool>(false, false)))), vec4<u32>(global4[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 19u)] | 16209u, 4294967295u, global4[_wgslsmith_index_u32(u_input.b.x, 19u)], func_2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 19u)], 15u)]), false)), ~u_input.b), Struct_1(1i, vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global3.x, 19u)], 19u)], 19u)]), global4[_wgslsmith_index_u32(~u_input.b.x, 19u)]), _wgslsmith_mult_u32(global3.x, ~33655u), 4294967295u, ~(~u_input.c.x)), abs(u_input.b)), Struct_1(~(~(1i >> (1u % 32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, global3.x), 19u)], global4[_wgslsmith_index_u32(u_input.b.x, 19u)], ~u_input.c.x), select(vec4<u32>(1u, global3.x, u_input.c.x, 4294967295u), u_input.b, vec4<bool>(true, true, false, false))), u_input.b), Struct_1(-(~global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(0u, 19u)], 11u)] >> (global3.x % 32u)), u_input.b, max(firstLeadingBit(~u_input.b), countOneBits(u_input.b) ^ _wgslsmith_add_vec4_u32(u_input.b, u_input.b))));
    global2 = array<f32, 15>();
    let var_1 = _wgslsmith_sub_i32(~(~(0i)), var_0.a);
    var var_2 = select(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(20795i, 0i, 1i), vec3<i32>(11751i, 1i, var_1)), vec3<i32>(var_0.a, var_1, var_1)), firstLeadingBit(vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 11u)], var_0.a, -1i)) >> (vec3<u32>(70895u, 4294967295u, 1u) % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(0i, global1[_wgslsmith_index_u32(u_input.c.x, 11u)] << (0u % 32u), global1[_wgslsmith_index_u32(4294967295u, 11u)]), vec3<i32>(reverseBits(var_1), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 871i, -1i, var_1), vec4<i32>(var_0.a, var_0.a, 14609i, -9878i)), _wgslsmith_mult_i32(-12069i, var_0.a))), ~vec3<i32>(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.a, -8686i), vec3<i32>(-7456i, var_1, var_0.a)), countOneBits(var_1)), _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(var_1, var_1), vec2<i32>(global1[_wgslsmith_index_u32(var_0.c.x, 11u)], 12092i))), vec2<i32>(var_0.a, global1[_wgslsmith_index_u32(1u, 11u)])) > -var_0.a);
    var_2 = vec3<i32>(2147483647i, -2147483647i, -40418i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(var_0.c.x, 15u)]))) - _wgslsmith_f_op_f32(1945f * _wgslsmith_f_op_f32(-754f + global2[_wgslsmith_index_u32(30051u, 15u)]))), -1050f, !select(all(vec2<bool>(false, false)), true, any(vec4<bool>(false, true, true, true))))));
}

