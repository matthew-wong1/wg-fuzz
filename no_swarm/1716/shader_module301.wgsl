struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25> = array<u32, 25>(4294967295u, 0u, 4294967295u, 56754u, 36598u, 1u, 0u, 0u, 33588u, 75790u, 145023u, 2533u, 144u, 53560u, 13959u, 36784u, 59827u, 4045u, 64250u, 0u, 0u, 4294967295u, 55985u, 1u, 9701u);

var<private> global1: array<i32, 19> = array<i32, 19>(-36640i, -22062i, -85321i, 40684i, -9660i, -10470i, -16309i, 1i, -26026i, i32(-2147483648), i32(-2147483648), 13949i, 34956i, 1i, i32(-2147483648), 1i, -19087i, 2147483647i, i32(-2147483648));

var<private> global2: Struct_3;

var<private> global3: array<Struct_2, 31>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(0u, reverseBits(1u), ~(~0u), abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50070u, 25u)], 25u)] >> (0u % 32u))), vec4<u32>(_wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(46205u, 25u)]) << (firstTrailingBit(global0[_wgslsmith_index_u32(4294967295u, 25u)]) % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12268u, 25u)], 25u)], 25u)], 25u)], 25u)], 36216u), global0[_wgslsmith_index_u32(reverseBits(4294967295u), 25u)]), 25u)], 25u)], 25u)], global0[_wgslsmith_index_u32(84002u, 25u)], 22036u)) | 44139u;
    let var_1 = Struct_3(global2.a);
    global0 = array<u32, 25>();
    var var_2 = global2.a;
    var var_3 = Struct_2(Struct_1(-498f, -global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(1u, 25u)]), 19u)], var_1.a.c), ~_wgslsmith_dot_vec2_u32(vec2<u32>(826u, 4294967295u) & vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], 7670u), vec2<u32>(17874u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0, global0[_wgslsmith_index_u32(var_0, 25u)], 1160u), vec4<u32>(84074u, var_0, var_0, var_0)))), var_1.a, !vec4<bool>(true, all(vec4<bool>(true, false, true, false)) != any(vec2<bool>(false, false)), any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), false)), true));
    return firstLeadingBit(select(vec2<u32>(84289u, 8027u), ~((vec2<u32>(global0[_wgslsmith_index_u32(var_0, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)]) << (vec2<u32>(var_0, 1u) % vec2<u32>(32u))) | vec2<u32>(53759u, 48958u)), select(!(!vec2<bool>(true, var_3.d.x)), vec2<bool>(var_3.d.x, !var_3.d.x), var_3.d.x)));
}

fn func_2() -> Struct_2 {
    return global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(abs(func_3()), ~vec2<u32>(45780u, 0u), countOneBits(vec2<u32>(1u, 12066u) | vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)])))), abs(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 40859u), ~vec2<u32>(4294967295u, 1u)), ~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(40921u, 25u)], 0u)))), 25u)], 31u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    let var_1 = -4438i;
    global3 = array<Struct_2, 31>();
    global1 = array<i32, 19>();
    var var_2 = global2.a;
    return var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<u32, 25>();
    var var_1 = func_2().d;
    let var_2 = _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~reverseBits(1u), 25u)], global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 69119u, _wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(53116u, 25u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(0u, 25u)], 25u)], 25u)])), 25u)]);
    var var_3 = global2.a.b;
    let var_4 = vec4<i32>(1i, u_input.b.x, firstTrailingBit(-49789i), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_2, 25u)], 25u)], 19u)]);
    var var_5 = func_2().c.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b ^ -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.a - _wgslsmith_f_op_f32(-2955f + 386f)))));
}

