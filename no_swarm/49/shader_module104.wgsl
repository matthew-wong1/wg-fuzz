struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1> = array<f32, 1>(368f);

var<private> global1: Struct_1 = Struct_1(false, vec3<bool>(false, false, true), vec3<u32>(5187u, 4294967295u, 4294967295u));

var<private> global2: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(58139u, 10853u, 52493u), vec3<u32>(4294967295u, 16944u, 1u), vec3<u32>(4294967295u, 47912u, 1u), vec3<u32>(25461u, 5046u, 102229u), vec3<u32>(0u, 23602u, 0u), vec3<u32>(59966u, 23525u, 1u), vec3<u32>(72507u, 4294967295u, 4294967295u), vec3<u32>(12094u, 8776u, 49837u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(1u, 1u, 29869u), vec3<u32>(1u, 1u, 36309u), vec3<u32>(0u, 0u, 42250u), vec3<u32>(80518u, 70616u, 0u), vec3<u32>(1951u, 30340u, 64344u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 29609u, 0u), vec3<u32>(66888u, 20046u, 1u), vec3<u32>(1u, 123261u, 1u), vec3<u32>(3765u, 0u, 42964u), vec3<u32>(1u, 1u, 0u));

var<private> global3: Struct_1 = Struct_1(false, vec3<bool>(false, false, true), vec3<u32>(40508u, 49138u, 1u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: vec3<u32>, arg_3: vec3<i32>) -> Struct_1 {
    global3 = Struct_1(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.c.x >> (~global1.c.x % 32u), 1u)]) >= -100f, !select(select(!vec3<bool>(false, false, global3.b.x), !vec3<bool>(arg_1.x, global3.a, arg_0.a), any(global3.b.xz)), arg_0.b, true), select(vec3<u32>(~global3.c.x, 4294967295u, ~_wgslsmith_mult_u32(arg_0.c.x, arg_2.x)), global2[_wgslsmith_index_u32(abs(arg_2.x) | ~(~global3.c.x), 20u)], arg_0.b));
    global3 = Struct_1(global1.b.x, vec3<bool>(arg_1.x, -1i <= _wgslsmith_sub_i32(-2147483647i, -arg_3.x), false), ~reverseBits(_wgslsmith_clamp_vec3_u32(global3.c, arg_0.c, arg_2) ^ global1.c));
    let var_0 = 26408i;
    let var_1 = arg_0;
    var var_2 = abs(select(_wgslsmith_add_vec4_i32(~(~u_input.d), -min(u_input.a, u_input.a)), vec4<i32>(var_0, -(-2147483647i >> (1u % 32u)), 2147483647i | select(-4126i, -5553i, arg_1.x), ~(arg_3.x >> (arg_2.x % 32u))), select(vec4<bool>(arg_1.x && arg_1.x, global1.a | false, false, arg_1.x), select(select(vec4<bool>(arg_0.b.x, global1.b.x, false, false), vec4<bool>(true, arg_0.a, true, true), false), !vec4<bool>(var_1.a, arg_1.x, global1.b.x, false), !vec4<bool>(arg_1.x, arg_1.x, false, false)), vec4<bool>(any(vec4<bool>(false, global1.b.x, global3.a, var_1.b.x)), !arg_0.b.x, !global1.a, true))));
    return Struct_1(global1.c.x > firstLeadingBit(~(~arg_0.c.x)), global1.b, ~_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_1.c.x, 15315u, global3.c.x)), firstLeadingBit(global1.c) ^ _wgslsmith_add_vec3_u32(arg_2, global1.c)));
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(u_input.e, 1u)], 420f, global0[_wgslsmith_index_u32(global1.c.x, 1u)]) - vec4<f32>(global0[_wgslsmith_index_u32(u_input.e, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(u_input.e, 1u)], 1348f))))))));
    global2 = array<vec3<u32>, 20>();
    let var_1 = !vec4<bool>(false, all(select(global3.b.yx, global3.b.zz, !global1.b.yz)), all(!vec3<bool>(true, global3.a, true)), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) >= var_0.x;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_mod_i32(18371i, _wgslsmith_sub_i32(~(-73019i), -u_input.a.x));
    global1 = func_2(Struct_1(true, !select(vec3<bool>(false, true, true), !global3.b, global3.b), reverseBits(~(global1.c << (vec3<u32>(0u, arg_2.x, global1.c.x) % vec3<u32>(32u))))), vec3<bool>(false, any(!vec3<bool>(global1.a, global3.a, arg_1.x)), any(!vec4<bool>(false, global3.b.x, arg_1.x, global3.a))), func_2(func_2(Struct_1(true, select(vec3<bool>(arg_1.x, false, false), vec3<bool>(arg_0, arg_0, true), global1.b), ~vec3<u32>(global1.c.x, arg_2.x, global1.c.x)), !global3.b, ~(~vec3<u32>(0u, global1.c.x, global3.c.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(u_input.d.xzz, u_input.a.zzz), u_input.d.zxw)), vec3<bool>(false, func_2(Struct_1(false, vec3<bool>(false, true, true), global1.c), global3.b, _wgslsmith_div_vec3_u32(global1.c, vec3<u32>(global1.c.x, global1.c.x, arg_2.x)), -u_input.a.zzx).b.x, all(select(vec3<bool>(global1.a, true, true), global3.b, global3.b.x))), vec3<u32>(func_2(func_2(Struct_1(global3.b.x, vec3<bool>(true, false, global1.b.x), global2[_wgslsmith_index_u32(12282u, 20u)]), vec3<bool>(arg_0, true, arg_1.x), global1.c, u_input.a.yzx), global1.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.c.x, arg_2.x, arg_2.x), global2[_wgslsmith_index_u32(1u, 20u)], vec3<u32>(9259u, 70401u, 66355u)), abs(u_input.a.xzw)).c.x, arg_2.x, 11542u), firstLeadingBit(u_input.a.wzw)).c, ~(~(vec3<i32>(u_input.d.x, -46488i, u_input.a.x) ^ ~u_input.a.yzw)));
    global3 = func_2(func_2(Struct_1(true, global3.b, ~(~vec3<u32>(4294967295u, 0u, 1u))), select(!select(vec3<bool>(global3.a, arg_1.x, global1.a), global3.b, arg_1.x), vec3<bool>(true, true, global3.b.x || arg_0), vec3<bool>(global1.a, !global1.a, u_input.a.x >= u_input.c)), _wgslsmith_mult_vec3_u32(abs(~global3.c), abs(vec3<u32>(11317u, 1u, 39239u))), u_input.a.wwx), !(!(!global1.b)), global3.c, vec3<i32>(-u_input.b, _wgslsmith_sub_i32(0i, _wgslsmith_add_i32(~28566i, _wgslsmith_mod_i32(1i, u_input.c))), -abs(u_input.b) | u_input.a.x));
    let var_1 = !(!vec2<bool>(true, func_2(Struct_1(true, global1.b, arg_2), !global1.b, ~global3.c, vec3<i32>(u_input.c, u_input.c, 16564i)).b.x));
    let var_2 = reverseBits(select(~func_2(func_2(Struct_1(true, global3.b, global3.c), vec3<bool>(arg_1.x, arg_0, arg_1.x), vec3<u32>(global3.c.x, arg_2.x, global3.c.x), u_input.d.xzz), select(global3.b, global1.b, global1.b), vec3<u32>(49894u, 4294967295u, global1.c.x), u_input.d.zzx).c.yx, ~global1.c.zx, !arg_1));
    return any(select(func_2(func_2(func_2(Struct_1(arg_0, vec3<bool>(var_1.x, true, global3.a), vec3<u32>(0u, arg_2.x, 4294967295u)), vec3<bool>(arg_1.x, false, false), vec3<u32>(33727u, global3.c.x, 50432u), vec3<i32>(u_input.d.x, -2147483647i, u_input.a.x)), !global3.b, vec3<u32>(4294967295u, 25654u, global3.c.x), select(u_input.d.xxw, vec3<i32>(0i, u_input.b, 0i), false)), !(!global3.b), _wgslsmith_mult_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(101329u, 4294967295u), 20u)], _wgslsmith_mult_vec3_u32(arg_2, vec3<u32>(0u, global1.c.x, u_input.e))), u_input.a.xzx).b.yz, select(vec2<bool>(true, true), vec2<bool>(!arg_1.x, !arg_1.x), !global3.b.x || true), true));
}

fn func_1() -> Struct_1 {
    let var_0 = 1401f;
    global3 = func_2(Struct_1(!global3.b.x, vec3<bool>(global1.b.x, any(!vec3<bool>(global1.a, true, false)), global1.b.x), ~(~(global1.c & vec3<u32>(u_input.e, 50128u, 46931u)))), !vec3<bool>(true, false, global1.a), abs(global1.c), u_input.a.zyz);
    var var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(~(global3.c.x | 24369u), 1u)] <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1273f)) - _wgslsmith_f_op_f32(-523f - -797f)), !(!(0u != global1.c.x)), true, !(u_input.e == (global1.c.x >> (32653u % 32u)))), vec4<bool>(false, global1.a, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 7663u, 39909u, 42249u), vec4<u32>(global3.c.x, global3.c.x, 47651u, u_input.e) | vec4<u32>(global3.c.x, global3.c.x, global3.c.x, global3.c.x)) <= u_input.e, all(!select(vec4<bool>(false, global3.b.x, true, true), vec4<bool>(global1.b.x, global3.a, global3.b.x, global3.b.x), vec4<bool>(true, true, false, true)))), func_4(func_3(global1.c.xz, -u_input.d, _wgslsmith_mult_vec2_u32(vec2<u32>(39456u, 1u), func_2(Struct_1(global1.b.x, vec3<bool>(true, global3.b.x, global1.a), vec3<u32>(0u, global3.c.x, 33437u)), vec3<bool>(global3.b.x, true, true), global1.c, u_input.a.wyw).c.yy)), !global3.b.zy, global1.c));
    let var_2 = -(select(vec2<i32>(-2147483647i, u_input.c) | u_input.a.wz, _wgslsmith_mod_vec2_i32(vec2<i32>(4998i, 12573i), firstLeadingBit(u_input.d.xy)), !func_2(Struct_1(true, vec3<bool>(global1.a, false, false), vec3<u32>(69597u, 1u, 23482u)), vec3<bool>(global3.a, global3.a, false), vec3<u32>(global1.c.x, global1.c.x, 78391u), u_input.a.ywy).b.zz) << (~min(vec2<u32>(global1.c.x, 9754u), ~global1.c.yy) % vec2<u32>(32u)));
    let var_3 = func_2(func_2(Struct_1(all(select(vec3<bool>(true, false, false), global1.b, false)), vec3<bool>(select(global1.b.x, false, false), true, -25243i >= u_input.a.x), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 18562u, 22297u, 21230u), vec4<u32>(u_input.e, 0u, global3.c.x, 47891u)), ~u_input.e, func_2(Struct_1(false, vec3<bool>(global3.b.x, global3.a, false), vec3<u32>(1u, 5824u, global3.c.x)), var_1.yww, global2[_wgslsmith_index_u32(4294967295u, 20u)], u_input.d.zxy).c.x)), vec3<bool>(all(var_1.wz), true, true), global1.c, vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(var_2.x, u_input.c)), 0i, ~(i32(-1i) * -2147483647i))), vec3<bool>(true, false & (~u_input.c != var_2.x), func_2(func_2(Struct_1(true, var_1.yyw, global3.c), vec3<bool>(true, false, var_1.x), global2[_wgslsmith_index_u32(min(1u, global3.c.x), 20u)], -vec3<i32>(u_input.c, 1i, var_2.x)), !(!vec3<bool>(true, true, global1.a)), ~vec3<u32>(global1.c.x, 1u, global3.c.x), vec3<i32>(-2147483647i, u_input.b, 2361i) | (u_input.a.zzz & u_input.a.yzw)).a), global1.c | countOneBits(global3.c), select(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(u_input.a, u_input.a), vec4<i32>(var_2.x, var_2.x, 0i, -29779i)), -68044i, _wgslsmith_mult_i32(firstTrailingBit(var_2.x), var_2.x)), u_input.d.zwx, func_2(Struct_1(global3.a && true, !vec3<bool>(true, global3.a, true), firstLeadingBit(global1.c)), vec3<bool>(global1.a, any(vec2<bool>(var_1.x, true)), true), ~(~global2[_wgslsmith_index_u32(u_input.e, 20u)]), _wgslsmith_mult_vec3_i32(u_input.d.yxz, u_input.d.wzy)).a));
    return var_3;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> StorageBuffer {
    let var_0 = _wgslsmith_div_u32(1u, 1u);
    var var_1 = global0[_wgslsmith_index_u32(abs(abs(global3.c.x)), 1u)];
    global3 = func_1();
    return StorageBuffer(firstLeadingBit(16759u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(911f, global0[_wgslsmith_index_u32(14805u, 1u)]) * vec2<f32>(global0[_wgslsmith_index_u32(arg_1.c.x, 1u)], 183f)) + vec2<f32>(global0[_wgslsmith_index_u32(arg_1.c.x, 1u)], -956f)) - vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], -723f)), vec2<f32>(_wgslsmith_f_op_f32(min(-1077f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.c.x, 1u)]))), 1274f))), -744f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 2147483647i;
    let var_1 = firstLeadingBit(u_input.b);
    let x = u_input.a;
    s_output = func_5(_wgslsmith_mult_u32(~1u, 0u), func_1());
}

