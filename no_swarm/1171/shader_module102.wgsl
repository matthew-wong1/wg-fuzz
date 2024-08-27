struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, true, true, true, false, true, false);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(2147483647i, 1i, 785i), vec4<u32>(1u, 40635u, 397u, 4363u), vec2<bool>(true, false)), Struct_1(vec3<i32>(-50241i, 44878i, i32(-2147483648)), vec4<u32>(71091u, 5076u, 1u, 60664u), vec2<bool>(true, false)));

var<private> global2: array<f32, 6> = array<f32, 6>(-1319f, -802f, -1451f, 1378f, -736f, 340f);

var<private> global3: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(-1i, -28819i, 1i), vec4<u32>(49538u, 1u, 4294967295u, 1u), vec2<bool>(false, false)), Struct_1(vec3<i32>(0i, 2147483647i, 0i), vec4<u32>(4294967295u, 0u, 54184u, 15195u), vec2<bool>(true, false)), Struct_1(vec3<i32>(1i, 0i, 2147483647i), vec4<u32>(4294967295u, 40712u, 16108u, 1u), vec2<bool>(true, true)), Struct_1(vec3<i32>(47541i, 1i, 15805i), vec4<u32>(27794u, 4294967295u, 0u, 575u), vec2<bool>(true, true)), Struct_1(vec3<i32>(2147483647i, 40958i, -1i), vec4<u32>(5595u, 14274u, 2906u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec3<i32>(-41096i, -33847i, 18238i), vec4<u32>(36224u, 1u, 1286u, 1u), vec2<bool>(false, false)), Struct_1(vec3<i32>(0i, -1i, -11173i), vec4<u32>(0u, 24828u, 0u, 23035u), vec2<bool>(false, true)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 70481i), vec4<u32>(0u, 1u, 0u, 64595u), vec2<bool>(true, true)), Struct_1(vec3<i32>(-1i, 54623i, -24423i), vec4<u32>(0u, 45263u, 54078u, 41645u), vec2<bool>(true, true)), Struct_1(vec3<i32>(0i, -39110i, -1i), vec4<u32>(4294967295u, 4294967295u, 4239u, 85557u), vec2<bool>(true, true)), Struct_1(vec3<i32>(34747i, 52111i, -1i), vec4<u32>(77819u, 19491u, 1u, 63646u), vec2<bool>(true, true)), Struct_1(vec3<i32>(45802i, -23578i, -1i), vec4<u32>(54028u, 1u, 14315u, 36105u), vec2<bool>(false, false)), Struct_1(vec3<i32>(-1i, 20691i, 2147483647i), vec4<u32>(4294967295u, 57395u, 1u, 70853u), vec2<bool>(false, true)), Struct_1(vec3<i32>(2147483647i, 32673i, 29116i), vec4<u32>(13785u, 0u, 40297u, 0u), vec2<bool>(true, true)), Struct_1(vec3<i32>(-23635i, -21741i, -8048i), vec4<u32>(0u, 173005u, 1u, 42050u), vec2<bool>(true, false)), Struct_1(vec3<i32>(-13551i, 1i, -1i), vec4<u32>(11602u, 4294967295u, 0u, 29393u), vec2<bool>(true, false)), Struct_1(vec3<i32>(-48711i, -45175i, -1i), vec4<u32>(29961u, 1u, 33585u, 4294967295u), vec2<bool>(true, true)), Struct_1(vec3<i32>(-1i, -7266i, 1i), vec4<u32>(4294967295u, 48611u, 3142u, 13547u), vec2<bool>(true, true)), Struct_1(vec3<i32>(-1i, 0i, 2147483647i), vec4<u32>(62923u, 0u, 28883u, 29263u), vec2<bool>(false, false)), Struct_1(vec3<i32>(-3838i, 31083i, 2147483647i), vec4<u32>(61232u, 1u, 33980u, 0u), vec2<bool>(false, false)), Struct_1(vec3<i32>(34945i, -40151i, 1i), vec4<u32>(42634u, 909u, 0u, 1u), vec2<bool>(false, true)), Struct_1(vec3<i32>(790i, 2147483647i, -11238i), vec4<u32>(31246u, 105064u, 1u, 0u), vec2<bool>(false, true)), Struct_1(vec3<i32>(42335i, 2147483647i, -25392i), vec4<u32>(4294967295u, 1u, 16404u, 4294967295u), vec2<bool>(false, false)));

var<private> global4: array<i32, 7>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>) -> vec3<i32> {
    var var_0 = Struct_1((u_input.c >> (select(~vec3<u32>(4294967295u, 0u, arg_1.x), vec3<u32>(0u, 35892u, 29465u), arg_0) % vec3<u32>(32u))) >> (u_input.d.xwz % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_add_vec4_u32(u_input.d, ~vec4<u32>(arg_1.x, arg_1.x, u_input.a, 4294967295u) >> (vec4<u32>(4294967295u, 13363u, arg_1.x, u_input.a) % vec4<u32>(32u)))), vec2<bool>(false, !global0[_wgslsmith_index_u32(~11798u, 9u)]));
    global0 = array<bool, 9>();
    let var_1 = abs(var_0.b) | firstLeadingBit(_wgslsmith_sub_vec4_u32(var_0.b, _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, var_0.b.x, 1u, arg_1.x), u_input.d), u_input.d)));
    var var_2 = -vec3<i32>(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.b.xyw, vec3<u32>(1u, 4294967295u, var_0.b.x)), vec3<u32>(24192u, 1u, 9193u) ^ var_0.b.zyz), ~(u_input.d.x | var_1.x)), 7u)], 0i << (min(25783u, var_1.x) % 32u), u_input.b);
    global3 = array<Struct_1, 23>();
    return min(u_input.c, var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(~func_3(any(!vec4<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], false, true)), ~_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.b.x, arg_0.b.x), u_input.d.wx)), vec4<u32>(20249u, 1u, 45384u, 19944u), select(vec2<bool>(global0[_wgslsmith_index_u32(67609u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]), select(vec2<bool>(any(vec4<bool>(false, arg_0.c.x, arg_0.c.x, global0[_wgslsmith_index_u32(0u, 9u)])), true), !arg_0.c, arg_1.c), arg_0.c));
    global3 = array<Struct_1, 23>();
    global2 = array<f32, 6>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-669f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1375f)), -2181f)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(select(~11980u, max(82631u, 0u), !arg_0.c.x), 6u)]))));
    global0 = array<bool, 9>();
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> vec3<bool> {
    return select(select(vec3<bool>(false, true, any(!vec3<bool>(false, arg_0.c.x, true))), !(!(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.b.x, 9u)]))), vec3<bool>(any(!vec3<bool>(true, false, global0[_wgslsmith_index_u32(48798u, 9u)])), any(vec2<bool>(false, false)) && true, arg_0.c.x)), select(select(!(!vec3<bool>(arg_0.c.x, true, arg_0.c.x)), select(vec3<bool>(global0[_wgslsmith_index_u32(69835u, 9u)], arg_0.c.x, arg_0.c.x), select(vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(0u, 9u)], arg_0.c.x, true), global0[_wgslsmith_index_u32(u_input.a, 9u)]), !vec3<bool>(arg_0.c.x, global0[_wgslsmith_index_u32(57344u, 9u)], false)), 4294967295u > u_input.a), vec3<bool>(arg_0.c.x, all(select(vec4<bool>(arg_0.c.x, false, false, arg_0.c.x), vec4<bool>(true, false, true, true), vec4<bool>(arg_0.c.x, false, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]))), arg_0.c.x), select(!(!vec3<bool>(arg_0.c.x, true, false)), select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_0.b.x, 9u)], true, global0[_wgslsmith_index_u32(u_input.d.x, 9u)]), !vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], arg_0.c.x, false), !global0[_wgslsmith_index_u32(arg_0.b.x, 9u)]), arg_0.c.x)), true);
}

fn func_5(arg_0: vec3<bool>) -> vec4<f32> {
    let var_0 = u_input.d.xw;
    var var_1 = ~abs(7708i);
    let var_2 = arg_0.x;
    let var_3 = ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 35846u | var_0.x, 46368u) | (vec3<u32>(u_input.d.x, 11150u, 1u) >> (u_input.d.wxy % vec3<u32>(32u))), u_input.d.zzx);
    global4 = array<i32, 7>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-343f, 811f, -623f, global2[_wgslsmith_index_u32(var_3, 6u)]))))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(func_2(Struct_1(vec3<i32>(-1760i, global4[_wgslsmith_index_u32(70866u, 7u)], -2147483647i), min(arg_2.b, vec4<u32>(arg_0.b.x, 38195u, 0u, 1u)), vec2<bool>(false, arg_2.c.x)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mult_u32(arg_0.b.x, arg_0.b.x)), 23u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), arg_0.b.yyw), 6u)])) - global2[_wgslsmith_index_u32(_wgslsmith_add_u32(23161u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.b.x, 35881u, 40073u, u_input.d.x), u_input.d)), 6u)]))));
    global4 = array<i32, 7>();
    var var_1 = firstLeadingBit(vec4<i32>(-81192i, ~2147483647i, _wgslsmith_mod_i32(~(-u_input.c.x), 46658i), arg_1));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(var_0.x + var_0.x);
    return _wgslsmith_mult_vec2_u32(~vec2<u32>(min(var_2.b.x, 4294967295u), max(2614u, arg_2.b.x)), vec2<u32>(1305u, ~10706u)) >> (countOneBits(reverseBits(max(arg_0.b.wx, max(var_2.b.xw, u_input.d.yz)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<i32, 7>();
    global0 = array<bool, 9>();
    global1 = array<Struct_1, 2>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.d.wz, u_input.d.yx, vec2<u32>(u_input.d.x, u_input.a)), func_1(global3[_wgslsmith_index_u32(u_input.a, 23u)], u_input.b, Struct_1(u_input.c, vec4<u32>(0u, u_input.d.x, 4294967295u, 4294967295u), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 9u)])))), _wgslsmith_sub_u32(0u << (countOneBits(23271u) % 32u), ~(~u_input.d.x)), _wgslsmith_sub_u32(u_input.d.x, _wgslsmith_mult_u32(u_input.a, ~u_input.d.x))), _wgslsmith_mod_vec3_u32(~u_input.d.zww, ~(u_input.d.xzy >> (u_input.d.yzx % vec3<u32>(32u))))), 9u)];
    global3 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(~(~2570u), 6u)], global2[_wgslsmith_index_u32(67114u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2[_wgslsmith_index_u32(~0u, 6u)], -706f))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-vec4<i32>(-1i, -2147483647i, 35256i >> (u_input.a % 32u), ~global4[_wgslsmith_index_u32(0u, 7u)])), vec2<f32>(-189f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(16581u, 6u)] - 1099f) * global2[_wgslsmith_index_u32(countOneBits(45314u), 6u)]) * -751f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(471f))), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d.x, u_input.a), 6u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_clamp_u32(35180u, firstTrailingBit(1u), _wgslsmith_add_u32(14743u, 1u))), 6u)]));
}

