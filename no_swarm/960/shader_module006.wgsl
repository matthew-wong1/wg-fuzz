struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(-2558f, 976f, 1006f, 1385f, 999f, -322f, 1000f, -1364f, 1438f, 517f, 1580f);

var<private> global1: array<u32, 28> = array<u32, 28>(18742u, 49720u, 1u, 1u, 94463u, 37254u, 22312u, 3676u, 1u, 7217u, 34297u, 0u, 4294967295u, 2248u, 0u, 19952u, 9558u, 102925u, 77984u, 0u, 87199u, 0u, 4294967295u, 1u, 4294967295u, 46027u, 15427u, 0u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    let var_0 = vec3<u32>(countOneBits(31198u), 0u, ~global1[_wgslsmith_index_u32(arg_3.a.c.b.x, 28u)]);
    global0 = array<f32, 11>();
    var var_1 = arg_3.a.c.b.xy;
    global0 = array<f32, 11>();
    global1 = array<u32, 28>();
    return 2060f;
}

fn func_2() -> vec3<bool> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(vec2<bool>(false, false), vec2<bool>(false, true), Struct_1(vec4<i32>(-32446i, -12536i, -2147483647i, -1i), vec3<u32>(global1[_wgslsmith_index_u32(0u, 28u)], 4148u, global1[_wgslsmith_index_u32(29130u, 28u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(26855u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)]), vec4<i32>(-2147483647i, -22221i, 21553i, -8535i)), vec4<u32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], 49887u, 30050u)), global0[_wgslsmith_index_u32(0u, 11u)]), all(vec4<bool>(true, false, true, false)), Struct_4(Struct_3(Struct_2(vec2<bool>(false, false), vec2<bool>(false, true), Struct_1(vec4<i32>(7904i, -2147483647i, -50841i, 0i), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 28u)], 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 11u)]), vec4<i32>(-2147483647i, 0i, 58012i, -1i)), vec4<u32>(36210u, global1[_wgslsmith_index_u32(1u, 28u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 28u)], 28u)], 28u)])), 415f), vec2<i32>(1i, 2147483647i)), Struct_3(Struct_2(vec2<bool>(true, true), vec2<bool>(true, true), Struct_1(vec4<i32>(1i, 14174i, 26188i, 1i), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 4294967295u, 26444u), vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45496u, 28u)], 28u)], 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(30825u, 28u)], 11u)], global0[_wgslsmith_index_u32(21254u, 11u)]), vec4<i32>(-2147483647i, 27067i, 40119i, 0i)), vec4<u32>(u_input.a, u_input.a, 91374u, 4294967295u)), 1560f)))) - -351f), 507f, _wgslsmith_f_op_f32(func_3(Struct_3(Struct_2(select(vec2<bool>(false, true), vec2<bool>(false, true), true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), Struct_1(vec4<i32>(1i, -2147483647i, 1i, 19807i), vec3<u32>(u_input.a, 25542u, global1[_wgslsmith_index_u32(21856u, 28u)]), vec3<f32>(342f, global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 11u)]), vec4<i32>(-2147483647i, -70325i, 13831i, 0i)), _wgslsmith_sub_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(34956u, 28u)], u_input.a, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49561u, 28u)], 28u)], 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec4<u32>(46297u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 28u)], 1u))), 1110f), true, Struct_4(Struct_3(Struct_2(vec2<bool>(true, false), vec2<bool>(false, true), Struct_1(vec4<i32>(-1i, -2147483647i, -28295i, 0i), vec3<u32>(0u, 63122u, global1[_wgslsmith_index_u32(39205u, 28u)]), vec3<f32>(-856f, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 11u)]), vec4<i32>(21602i, 0i, 16286i, -2147483647i)), vec4<u32>(u_input.a, 0u, u_input.a, 10243u)), 1143f), vec2<i32>(max(-66387i, -10770i), _wgslsmith_add_i32(-28565i, 1i))), Struct_3(Struct_2(vec2<bool>(false, false), vec2<bool>(true, true), Struct_1(vec4<i32>(0i, 86i, 31694i, 26456i), vec3<u32>(u_input.a, 38450u, u_input.a), vec3<f32>(global0[_wgslsmith_index_u32(35596u, 11u)], -449f, global0[_wgslsmith_index_u32(10919u, 11u)]), vec4<i32>(0i, 20056i, 25307i, -37299i)), ~vec4<u32>(0u, 95964u, 1u, 1u)), global0[_wgslsmith_index_u32(u_input.a ^ 47571u, 11u)]))));
    let var_1 = !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(u_input.a >= 4294967295u, 70005u != global1[_wgslsmith_index_u32(60528u, 28u)], true, all(vec2<bool>(true, true)))), true);
    global0 = array<f32, 11>();
    global0 = array<f32, 11>();
    global1 = array<u32, 28>();
    return select(vec3<bool>(!all(vec2<bool>(false, true)) & var_1.x, false, select(any(vec4<bool>(true, true, var_1.x, true)), 1i > firstTrailingBit(-31238i), false)), !(!var_1.yxz), all(var_1.zw));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> bool {
    var var_0 = select(select(!(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, arg_2.a.a.x), true)), !(!select(vec3<bool>(true, false, false), vec3<bool>(arg_1, arg_1, arg_1), true)), func_2()), select(vec3<bool>(true, !arg_2.a.a.x, any(vec4<bool>(false, true, arg_2.a.a.x, false))), !(!(!vec3<bool>(arg_1, false, true))), select(arg_1, any(vec2<bool>(arg_2.a.a.x, arg_1)), true & func_2().x)), !vec3<bool>(!arg_2.a.b.x, false, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_2.b) - _wgslsmith_f_op_vec2_f32(exp2(arg_2.a.c.c.xz))), arg_0.c.yz)));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_2.a.c.c.yy)));
    let var_2 = func_2().x && var_0.x;
    let var_3 = func_2().zz;
    return (~(-27979i) <= max(_wgslsmith_sub_i32(2147483647i, ~(-1170i)), arg_2.a.c.d.x)) || all(!(!vec4<bool>(arg_1, var_3.x, true, var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(func_1(Struct_1(-vec4<i32>(-39656i, 8983i, 1i, 40338i), vec3<u32>(u_input.a, u_input.a, 0u), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66541u, 28u)], 28u)], 28u)], 28u)], 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)], -1000f) * vec3<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)], 11u)], global0[_wgslsmith_index_u32(24302u, 11u)])), vec4<i32>(-27980i, -43473i, 0i, 48136i)), all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false)), Struct_3(Struct_2(vec2<bool>(false, false), vec2<bool>(true, false), Struct_1(vec4<i32>(-1i, 26741i, 4102i, 40532i), vec3<u32>(global1[_wgslsmith_index_u32(u_input.a, 28u)], 49889u, global1[_wgslsmith_index_u32(40192u, 28u)]), vec3<f32>(-730f, 1101f, global0[_wgslsmith_index_u32(23679u, 11u)]), vec4<i32>(42886i, 1553i, -2147483647i, -2147483647i)), vec4<u32>(global1[_wgslsmith_index_u32(4294967295u, 28u)], u_input.a, global1[_wgslsmith_index_u32(u_input.a, 28u)], u_input.a)), _wgslsmith_f_op_f32(f32(-1f) * -582f))), true), func_2().yx, Struct_1(-select(-vec4<i32>(0i, -15335i, 2147483647i, -2147483647i), vec4<i32>(1i, 1i, 1i, 1i), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false))), ~_wgslsmith_sub_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.a, u_input.a)), vec3<u32>(4294967295u, global1[_wgslsmith_index_u32(0u, 28u)], u_input.a) ^ vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(81982u, 28u)])), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(round(433f)), _wgslsmith_f_op_f32(sign(-635f)), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]))))), firstTrailingBit(countOneBits(-vec4<i32>(-21384i, -30147i, 36954i, -2147483647i)))), ~vec4<u32>(~1u, ~u_input.a, abs(_wgslsmith_dot_vec3_u32(vec3<u32>(56486u, u_input.a, 0u), vec3<u32>(u_input.a, 4294967295u, 28033u))), max(reverseBits(49817u), ~global1[_wgslsmith_index_u32(1u, 28u)])));
    var var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-233f)))), global0[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(var_0.d.x, 30970u, firstTrailingBit(u_input.a))), 11u)]));
    let var_2 = any(vec2<bool>(any(select(vec2<bool>(var_0.b.x, false), var_0.a, vec2<bool>(var_0.b.x, var_0.a.x))), _wgslsmith_dot_vec2_i32(countOneBits(var_0.c.a.zy), vec2<i32>(var_0.c.a.x, var_0.c.d.x)) >= 51956i));
    global0 = array<f32, 11>();
    var_0 = Struct_2(vec2<bool>(true, false || var_2), select(!func_2().zz, var_0.a, func_1(var_0.c, !(2147483647i > var_0.c.d.x), Struct_3(Struct_2(var_0.b, var_0.a, var_0.c, var_0.d), -439f))), Struct_1(vec4<i32>(var_0.c.d.x, var_0.c.d.x >> (0u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -1i, -65051i), var_0.c.d.xxy), firstLeadingBit(19103i)) ^ (vec4<i32>(-1i) * -var_0.c.a), vec3<u32>(max(4294967295u << (global1[_wgslsmith_index_u32(56173u, 28u)] % 32u), 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45950u, 28u)], 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.d.x, 28u)], 28u)], u_input.a, 4294967295u), firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(var_0.c.b.x, 28u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 28u)], 28u)], 1u, var_0.c.b.x))), 4294967295u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-883f, -1382f, _wgslsmith_f_op_f32(-130f - 439f))), _wgslsmith_mult_vec4_i32(-var_0.c.a, var_0.c.d)), ~min(max(countOneBits(var_0.d), var_0.d), vec4<u32>(82334u, 52755u, ~var_0.c.b.x, ~var_0.d.x)));
    var var_3 = Struct_3(Struct_2(select(var_0.a, select(select(var_0.b, vec2<bool>(false, true), var_0.a.x), !vec2<bool>(false, var_2), vec2<bool>(var_0.a.x, var_0.a.x)), func_2().x), select(vec2<bool>(false, all(vec4<bool>(false, false, var_2, false))), var_0.a, 60967u <= global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(u_input.a, 28u)]), 28u)]), Struct_1(~vec4<i32>(-51220i, -126029i, var_0.c.a.x, var_0.c.a.x), reverseBits(vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a, 28u)], 28u)])) | vec3<u32>(37742u, 1023u, var_0.c.b.x), var_0.c.c, ~(-vec4<i32>(7359i, var_0.c.a.x, var_0.c.d.x, 2147483647i))), ~firstTrailingBit(vec4<u32>(107279u, 1u, 4294967295u, 11483u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.c.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(var_0.c.b.x, 11u)], var_0.c.c.x)) * _wgslsmith_f_op_f32(min(var_0.c.c.x, var_0.c.c.x)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.c.c.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.c.b.x, 28u)], 11u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(var_0.c.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-895f + -558f), var_3.a.c.c.x)))))), vec3<u32>(select(29911u, 122617u, false), var_3.a.d.x, ~u_input.a), reverseBits(23625i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b)), -1475f));
}

