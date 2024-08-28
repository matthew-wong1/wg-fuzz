struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: Struct_1 = Struct_1(false, vec3<u32>(1u, 2091u, 4294967295u));

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    let var_0 = Struct_2(arg_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b)));
    global0 = array<Struct_3, 29>();
    var var_1 = all(!vec4<bool>(!(var_0.b == arg_1), !var_0.a.a & true, select(global1.a, true, arg_0.a.a.a) | all(vec2<bool>(var_0.a.a, arg_0.a.a.a)), true && !arg_0.a.a.a));
    var var_2 = var_0.a.b.x;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(-var_0.b))));
    return arg_0.a;
}

fn func_3() -> f32 {
    let var_0 = func_2(global0[_wgslsmith_index_u32(~global1.b.x, 29u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1051f) - _wgslsmith_f_op_f32(f32(-1f) * -324f))).a;
    let var_1 = Struct_1(var_0.a, vec3<u32>(_wgslsmith_mult_u32(~42448u, _wgslsmith_div_u32(var_0.b.x, var_0.b.x)), reverseBits(max(4294967295u, 1u)), 124211u) ^ (vec3<u32>(_wgslsmith_sub_u32(4294967295u, global1.b.x), ~14931u, var_0.b.x & var_0.b.x) & global1.b));
    let var_2 = countOneBits(-u_input.b);
    let var_3 = Struct_3(func_2(Struct_3(func_2(global0[_wgslsmith_index_u32(~var_1.b.x, 29u)], -967f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(496f, 985f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(397f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-379f * 1335f) * func_2(global0[_wgslsmith_index_u32(42999u, 29u)], -1105f).b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -953f))) * 835f));
    global0 = array<Struct_3, 29>();
    return _wgslsmith_f_op_f32(189f * var_3.b);
}

fn func_1(arg_0: Struct_3) -> Struct_1 {
    let var_0 = u_input.c;
    let var_1 = Struct_3(func_2(global0[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -559f))))), -659f);
    var var_2 = 4294967295u;
    let var_3 = var_1;
    global1 = var_1.a.a;
    return func_2(Struct_3(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(arg_0.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(var_1.b, _wgslsmith_f_op_f32(func_3()), false)), _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.b, -1000f), _wgslsmith_f_op_f32(var_3.a.b * -371f)))))).a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    let var_0 = func_2(global0[_wgslsmith_index_u32(~(~global1.b.x) | ~abs(abs(arg_0.a.b.x)), 29u)], arg_1.b).a;
    var var_1 = select(select(vec3<bool>(!func_2(Struct_3(arg_1, arg_1.b), arg_1.b).a.a, (var_0.b.x & arg_1.a.b.x) != global1.b.x, 147f > _wgslsmith_f_op_f32(func_3())), select(!select(vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(var_0.a, var_0.a, var_0.a), vec3<bool>(arg_0.a.a, true, arg_0.a.a)), vec3<bool>(true, true, 1u >= arg_0.a.b.x), var_0.a), !var_0.a), vec3<bool>(all(vec3<bool>(global1.a, true, func_1(global0[_wgslsmith_index_u32(var_0.b.x, 29u)]).a)), true, global1.a), all(select(vec2<bool>(global1.a, false), select(vec2<bool>(var_0.a, global1.a), vec2<bool>(false, arg_1.a.a), var_0.a), vec2<bool>(true, true))) == !(!var_0.a));
    var var_2 = Struct_3(Struct_2(arg_0.a, 1326f), arg_0.b);
    let var_3 = _wgslsmith_mult_i32(max(-46351i, firstLeadingBit(abs(u_input.b)) >> (max(~630u, var_0.b.x) % 32u)), u_input.b);
    var var_4 = arg_0.a;
    return _wgslsmith_div_f32(-199f, _wgslsmith_f_op_f32(arg_1.b + func_2(Struct_3(Struct_2(var_0, -1875f), _wgslsmith_f_op_f32(step(267f, arg_1.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.b)))).b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(global1.a, vec3<u32>(global1.b.x, global1.b.x, global1.b.x)), -1324f), Struct_2(func_1(Struct_3(Struct_2(Struct_1(global1.a, global1.b), 1000f), -397f)), _wgslsmith_f_op_f32(f32(-1f) * -1857f)))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-184f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(996f, 892f)))));
    let var_1 = _wgslsmith_mod_u32(~58600u >> (~global1.b.x % 32u), 4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)));
    let var_3 = reverseBits(vec4<i32>(_wgslsmith_mult_i32(~(-2242i), ~u_input.c), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-32400i, 54899i), vec2<i32>(u_input.c, 21902i)), countOneBits(vec2<i32>(17463i, 0i))), 24248i >> ((global1.b.x & 7588u) % 32u), u_input.b)) ^ firstTrailingBit(firstTrailingBit(vec4<i32>(u_input.b, 2383i, 59376i, 1i) ^ vec4<i32>(17304i, u_input.b, 44885i, 59873i)) << (~vec4<u32>(4294967295u, 1u, 1u, var_1) % vec4<u32>(32u)));
    let var_4 = func_1(global0[_wgslsmith_index_u32(11151u, 29u)]);
    var var_5 = ~firstTrailingBit(~vec4<u32>(3311u, var_1, var_4.b.x, var_4.b.x) ^ ~vec4<u32>(68632u, 1u, 12669u, var_4.b.x));
    global0 = array<Struct_3, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<u32>(abs(max(global1.b.x, var_5.x)), var_1 | ~var_5.x), ~var_4.b.xy >> (~var_4.b.zz % vec2<u32>(32u)), !any(vec2<bool>(true, false))), _wgslsmith_dot_vec3_i32(countOneBits(abs(vec3<i32>(2147483647i, var_3.x, var_3.x) & vec3<i32>(-16453i, u_input.c, 28198i))), var_3.zzx), vec3<i32>(abs(-u_input.b & u_input.c), ~(~(-12816i)) >> (func_1(Struct_3(Struct_2(var_4, -1211f), var_2.x)).b.x % 32u), ~(~5540i)), _wgslsmith_add_vec4_i32(var_3, var_3) << (firstTrailingBit(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_1, global1.b.x, var_5.x, 0u), vec4<u32>(var_5.x, 16331u, var_4.b.x, global1.b.x))) % vec4<u32>(32u)), 4294967295u);
}

