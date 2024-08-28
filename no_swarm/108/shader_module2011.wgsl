struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<u32>;

var<private> global2: array<bool, 6> = array<bool, 6>(false, false, false, false, true, true);

var<private> global3: vec4<u32> = vec4<u32>(69119u, 6644u, 4294967295u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    let var_0 = firstLeadingBit(firstLeadingBit(vec4<u32>(~1u, countOneBits(~global3.x), ~62130u, global1.x << (_wgslsmith_div_u32(arg_1.c.x, global1.x) % 32u))));
    global2 = array<bool, 6>();
    let var_1 = Struct_2(firstTrailingBit(min(~arg_1.a, global0.yxw)), Struct_1(arg_2.a), _wgslsmith_sub_vec2_u32(~(~arg_1.c), _wgslsmith_mult_vec2_u32(arg_1.c, vec2<u32>(34030u, global3.x)) & _wgslsmith_mult_vec2_u32(abs(vec2<u32>(4294967295u, global3.x)), select(vec2<u32>(0u, 0u), var_0.wy, arg_0))), Struct_1(arg_1.e.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1373f)));
    return global1.x;
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<u32> {
    global3 = ~(vec4<u32>(~arg_2.x, 1u, abs(39456u), firstTrailingBit(arg_2.x)) >> (max(vec4<u32>(global1.x, arg_2.x, global3.x, global3.x) | vec4<u32>(4294967295u, arg_2.x, 4294967295u, 82095u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, 554u, 1u, global1.x), vec4<u32>(17261u, global3.x, arg_2.x, 53241u))) % vec4<u32>(32u))) ^ vec4<u32>(reverseBits(func_3(vec2<bool>(global2[_wgslsmith_index_u32(global3.x, 6u)], global2[_wgslsmith_index_u32(global3.x, 6u)]), Struct_2(global0.wyw, Struct_1(-1000f), arg_2, Struct_1(884f), Struct_1(529f)), Struct_1(arg_3.x))), firstLeadingBit(~(~4722u)), _wgslsmith_sub_u32(4294967295u, global3.x), _wgslsmith_dot_vec4_u32(vec4<u32>(~global3.x, ~global1.x, _wgslsmith_mult_u32(69030u, 3314u), _wgslsmith_div_u32(arg_2.x, 38902u)), ~vec4<u32>(global1.x, 12912u, arg_2.x, 1u)));
    let var_0 = arg_1;
    global1 = global3.www;
    global3 = (reverseBits(vec4<u32>(0u, ~1u, func_3(vec2<bool>(false, global2[_wgslsmith_index_u32(global3.x, 6u)]), Struct_2(vec3<i32>(global0.x, 2147483647i, -7478i), Struct_1(arg_3.x), global1.xz, Struct_1(arg_3.x), Struct_1(arg_3.x)), Struct_1(-1988f)), ~arg_2.x)) & ~_wgslsmith_add_vec4_u32(~vec4<u32>(global1.x, 4294967295u, global1.x, 0u), countOneBits(vec4<u32>(global1.x, global1.x, 0u, 24696u)))) << (~vec4<u32>(0u, abs(max(1u, arg_2.x)), min(arg_2.x, global1.x >> (35354u % 32u)), max(global3.x, arg_2.x)) % vec4<u32>(32u));
    var var_1 = arg_3.x;
    return _wgslsmith_add_vec4_u32(~(~vec4<u32>(75839u, 6938u, global1.x, 1u) & vec4<u32>(reverseBits(1605u), abs(global3.x), arg_2.x, global1.x)), vec4<u32>(0u, _wgslsmith_mult_u32(arg_2.x, _wgslsmith_mult_u32(~4294967295u, countOneBits(global1.x))), ~global1.x, ~(~(arg_2.x | arg_2.x))));
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    global0 = arg_0;
    let var_0 = global2[_wgslsmith_index_u32(global3.x, 6u)];
    var var_1 = ~(~firstTrailingBit(select(vec4<u32>(35641u, 0u, global1.x, 40153u), vec4<u32>(0u, 1u, 5965u, global3.x), true))) ^ abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(~0u, 4294967295u, global3.x, 4294967295u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(global1.x, global3.x, 8271u, global1.x), vec4<u32>(15695u, global3.x, 0u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global3.x, global3.x, 0u, 7963u) & vec4<u32>(45017u, 106685u, 40512u, 8945u), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3.x, global1.x, 96716u), vec4<u32>(global1.x, global3.x, global1.x, 0u)))));
    let var_2 = _wgslsmith_f_op_f32(max(1804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-672f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1106f), -1206f))))));
    var_1 = select(~_wgslsmith_add_vec4_u32(func_2(global0.zx, -19024i, vec2<u32>(1u, 1u), vec3<f32>(var_2, -1530f, -833f)), ~vec4<u32>(0u, 0u, var_1.x, 25418u)) & vec4<u32>(~6711u, _wgslsmith_sub_u32(~0u, global3.x), min(global1.x, var_1.x), 4294967295u), vec4<u32>(reverseBits(global1.x), select(0u, min(global3.x, 18048u), u_input.a <= (global0.x | u_input.a)), ~(global3.x >> (27134u % 32u)), 0u << (1u % 32u)), vec4<bool>(all(vec4<bool>(true, true, true, true)), !all(vec3<bool>(true, true, global2[_wgslsmith_index_u32(var_1.x, 6u)])), global2[_wgslsmith_index_u32(global3.x, 6u)], true));
    return var_1.xx;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<u32>(~global1.x >> (~(14799u & global1.x) % 32u), global3.x, 74074u, _wgslsmith_dot_vec2_u32(func_1(vec4<i32>(u_input.a, u_input.a, -1i, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), global1.yz ^ ~vec2<u32>(global3.x, global1.x))), _wgslsmith_div_vec4_u32(~vec4<u32>(~global3.x, countOneBits(0u), 0u, global1.x), _wgslsmith_add_vec4_u32(~abs(vec4<u32>(global3.x, global1.x, 23139u, 12265u)), select(_wgslsmith_sub_vec4_u32(vec4<u32>(global3.x, global1.x, global1.x, global1.x), vec4<u32>(36014u, global3.x, 84389u, 0u)), vec4<u32>(global1.x, global3.x, global1.x, 5967u), global2[_wgslsmith_index_u32(0u, 6u)]))));
    let var_1 = global0.yxw;
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-707f, 702f), _wgslsmith_f_op_f32(ceil(579f)))) - _wgslsmith_f_op_f32(1781f + _wgslsmith_f_op_f32(-122f * -275f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -173f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-940f * -635f) - _wgslsmith_f_op_f32(1715f * 331f))))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1217f, 1000f, -153f, 2081f), vec4<f32>(-1227f, 1145f, 443f, 1728f), global2[_wgslsmith_index_u32(4294967295u, 6u)])))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-339f, 1617f, -227f, 329f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2117f, 2136f, 1493f, -1000f))))));
    var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-544f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(212f - var_3.x)))), any(vec2<bool>(false, global2[_wgslsmith_index_u32(global1.x, 6u)])))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1023f)), 2261f))));
    let var_4 = true;
    global1 = select(~(~global3.xzz), ~_wgslsmith_sub_vec3_u32(vec3<u32>(15806u, global3.x, 20778u), ~vec3<u32>(125463u, var_0.x, var_0.x)), vec3<bool>(true, var_3.x >= _wgslsmith_f_op_f32(step(var_3.x, -460f)), select(global0.x != var_1.x, !global2[_wgslsmith_index_u32(var_0.x, 6u)], true))) ^ vec3<u32>(firstTrailingBit(var_0.x) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 42242u, global3.x), var_0.xxz), ~1u, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(31396u, vec3<i32>(_wgslsmith_mult_i32(firstLeadingBit(-1i), var_1.x ^ -38105i), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0.x, var_1.x), select(vec3<i32>(u_input.a, 1292i, 1i), global0.xwy, vec3<bool>(true, global2[_wgslsmith_index_u32(var_0.x, 6u)], true))), var_1.x) & -global0.zzz);
}

