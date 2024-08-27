struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 7>;

var<private> global1: vec4<i32> = vec4<i32>(-20886i, i32(-2147483648), 2147483647i, -51540i);

var<private> global2: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> i32 {
    global2 = arg_3.d.b.zzz << (vec3<u32>(arg_3.c.a.b.x, ~1u, ~_wgslsmith_add_u32(4294967295u, global2.x)) % vec3<u32>(32u));
    global1 = vec4<i32>(global1.x, -74885i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(42822i, u_input.b, 25808i >> (global2.x % 32u)), vec3<i32>(u_input.a.x & arg_3.d.a, countOneBits(-2147483647i), min(-1i, global1.x))), arg_3.d.a);
    let var_0 = _wgslsmith_clamp_vec3_i32(u_input.a, reverseBits(-global1.yzx), min(vec3<i32>(_wgslsmith_sub_i32(~(-10275i), _wgslsmith_sub_i32(arg_3.d.a, global1.x)), reverseBits(global1.x), ~u_input.a.x), abs(vec3<i32>(select(-1i, arg_3.d.a, arg_3.a), 1i, _wgslsmith_add_i32(1i, u_input.a.x)))));
    global0 = array<Struct_4, 7>();
    var var_1 = all(select(select(select(!vec3<bool>(arg_2, arg_2, arg_2), select(vec3<bool>(arg_3.a, arg_2, arg_2), vec3<bool>(true, false, true), false), true), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(arg_2, arg_2, arg_2)), vec3<bool>(false, false | arg_3.a, all(vec3<bool>(false, false, false)))), vec3<bool>(true, arg_2, true), !select(vec3<bool>(arg_2, arg_2, arg_3.a), vec3<bool>(true, arg_3.a, true), arg_2)));
    return select((_wgslsmith_clamp_i32(~(-6374i), countOneBits(3488i), -41301i) ^ -(arg_3.d.a | u_input.a.x)) | global1.x, ~u_input.b, !arg_3.a);
}

fn func_2() -> f32 {
    global1 = min(vec4<i32>(-2988i >> (_wgslsmith_div_u32(global2.x, global2.x) % 32u), u_input.a.x, 35466i, u_input.a.x), vec4<i32>(21513i, u_input.a.x, 28485i ^ ~global1.x, global1.x));
    var var_0 = -func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), -1471f, 379f) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-160f, 1189f, -230f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-222f, -509f, 587f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-332f, -1000f, 2628f, -777f), vec4<f32>(-2710f, -604f, -1754f, 1073f))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(212f, -380f, 1216f, -183f), vec4<f32>(-1754f, 113f, -828f, 539f), false))), vec4<f32>(-416f, _wgslsmith_f_op_f32(-136f * -990f), 257f, _wgslsmith_f_op_f32(trunc(947f))))), false, Struct_4(!select(true, true, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(205f)))), Struct_2(Struct_1(u_input.a.x, vec4<u32>(4294967295u, 1u, global2.x, global2.x), vec3<f32>(779f, -1032f, 2544f)), Struct_1(2147483647i, vec4<u32>(global2.x, global2.x, 0u, global2.x), vec3<f32>(-1000f, 699f, -824f))), Struct_1(-u_input.a.x, _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, 1u, 5493u, 36169u), vec4<u32>(15993u, 41242u, global2.x, 93324u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-278f, 1610f, 452f) * vec3<f32>(335f, -886f, -510f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, u_input.a), global1.xwy) >> (1u % 32u), ~(vec4<u32>(global2.x, 17438u, 1u, 16108u) >> (vec4<u32>(1u, global2.x, global2.x, global2.x) % vec4<u32>(32u))) | firstLeadingBit(vec4<u32>(global2.x, global2.x, 4291u, global2.x) | vec4<u32>(1u, global2.x, global2.x, global2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1713f, 392f, 628f)), vec3<f32>(1f, 1f, 1f), true)) - vec3<f32>(-260f, -255f, _wgslsmith_f_op_f32(trunc(1725f))))), Struct_1(-1i, vec4<u32>(firstLeadingBit(~45748u), _wgslsmith_dot_vec2_u32(~global2.zx, _wgslsmith_clamp_vec2_u32(global2.yx, global2.yy, vec2<u32>(global2.x, 13684u))), 0u, global2.x), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1084f, 496f, 250f))))));
    let var_2 = global0[_wgslsmith_index_u32(~0u | (_wgslsmith_sub_u32(var_1.b.b.x, _wgslsmith_sub_u32(4294967295u & global2.x, ~var_1.a.b.x)) | _wgslsmith_sub_u32(abs(global2.x), max(16917u, countOneBits(75708u)))), 7u)];
    var_0 = abs(~var_2.d.a);
    return -435f;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_4 {
    var var_0 = max(select(~0u, ~(~5622u), arg_0.x), _wgslsmith_div_u32(0u, _wgslsmith_sub_u32(global2.x << (global2.x % 32u), _wgslsmith_mod_u32(min(0u, global2.x), global2.x))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f * 3117f)), _wgslsmith_f_op_f32(select(-834f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1013f))), true)), _wgslsmith_f_op_f32(func_2()));
    let var_2 = _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_add_i32(select(i32(-1i) * -2147483647i, countOneBits(u_input.a.x), arg_0.x), 1i), _wgslsmith_sub_i32(-2147483647i, global1.x), i32(-1i) * -1i), ~vec3<i32>(2147483647i, select(u_input.a.x, abs(global1.x), all(arg_0)), ~691i));
    let var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-396f, -311f, 799f, -122f) + vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<f32>(920f, var_1.x, -1371f, 185f), vec4<bool>(true, arg_0.x, arg_0.x, true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.x, -1000f, -238f, var_1.x), vec4<f32>(914f, 188f, var_1.x, var_1.x)))))))))));
    global2 = firstLeadingBit(vec3<u32>(~(~1u), global2.x, reverseBits(~0u)) ^ vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, global2.x, 1u), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 6226u, 17152u), vec3<u32>(0u, global2.x, global2.x))), ~max(36326u, global2.x), ~1u));
    return Struct_4(arg_0.x, var_3.x, Struct_2(Struct_1(min(u_input.b, arg_1.x), ~(vec4<u32>(global2.x, global2.x, 5200u, 5646u) | vec4<u32>(global2.x, 4294967295u, global2.x, 0u)), _wgslsmith_f_op_vec3_f32(-var_1)), Struct_1(global1.x, ~(vec4<u32>(4294967295u, 47229u, 20910u, 4294967295u) | vec4<u32>(global2.x, 0u, 53169u, global2.x)), var_3.zwx)), Struct_1(global1.x, countOneBits(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, global2.x, global2.x, global2.x), vec4<u32>(1u, 38931u, global2.x, 5874u), vec4<u32>(global2.x, 6163u, global2.x, 4294967295u)), vec4<u32>(49352u, global2.x, global2.x, 60269u), false)), vec3<f32>(_wgslsmith_f_op_f32(1499f + -745f), var_1.x, var_3.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4) -> i32 {
    return -15085i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(global2.x);
    var var_1 = Struct_3(28545u, global2.x, vec3<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(-9794i, _wgslsmith_clamp_i32(-2147483647i, -18902i, 2147483647i))), -39797i, func_4(firstTrailingBit(global1.yz), func_1(vec3<bool>(true, false, true), vec3<i32>(global1.x, 1i, 56644i)))), Struct_2(func_1(vec3<bool>(global2.x >= 43151u, all(vec4<bool>(false, true, true, true)), all(vec2<bool>(false, true))), vec3<i32>(u_input.b, 1i, global1.x) | (vec3<i32>(u_input.b, 2147483647i, 1i) ^ global1.xzw)).d, Struct_1(firstLeadingBit(u_input.b), ~(vec4<u32>(global2.x, 0u, 31226u, 12348u) << (vec4<u32>(74066u, global2.x, global2.x, 52701u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-492f, 547f, 953f))))));
    let var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(-reverseBits(var_1.c.x) & reverseBits(func_1(vec3<bool>(false, false, true), var_1.c).d.a), func_4(select(global1.xx, -vec2<i32>(27576i, 26383i), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), global0[_wgslsmith_index_u32(firstLeadingBit(max(global2.x, var_1.d.b.b.x)), 7u)])), firstTrailingBit(-(~global1.xy)));
    var_0 = ~var_1.a << (1u % 32u);
    global2 = ~vec3<u32>(global2.x, ~abs(var_1.d.a.b.x), var_1.b);
    var var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a.x, u_input.b, func_4(vec2<i32>(u_input.a.x, firstLeadingBit(-1i)), global0[_wgslsmith_index_u32((var_1.b ^ global2.x) >> (1u % 32u), 7u)])), -(~vec3<i32>(var_1.c.x, func_3(vec3<f32>(var_1.d.b.c.x, var_1.d.a.c.x, var_1.d.b.c.x), vec4<f32>(-1000f, var_1.d.b.c.x, -279f, -667f), true, global0[_wgslsmith_index_u32(4294967295u, 7u)]), 44428i)));
    var var_4 = select(true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1323f)))), var_1.d.a.c.x);
}

