struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec2<i32>(-1i, 1i), vec3<bool>(true, true, true), vec3<u32>(38912u, 39456u, 44242u), vec2<f32>(1285f, -823f)), Struct_1(vec2<i32>(-1i, -17388i), vec3<bool>(true, true, true), vec3<u32>(127057u, 1u, 0u), vec2<f32>(384f, 317f)), Struct_1(vec2<i32>(i32(-2147483648), -11265i), vec3<bool>(true, true, false), vec3<u32>(1u, 25678u, 24529u), vec2<f32>(-365f, 642f)), Struct_1(vec2<i32>(36647i, 37664i), vec3<bool>(true, true, true), vec3<u32>(4294967295u, 0u, 55965u), vec2<f32>(1000f, 413f)), Struct_1(vec2<i32>(-1i, 1i), vec3<bool>(true, false, true), vec3<u32>(1u, 4294967295u, 4294967295u), vec2<f32>(1351f, 322f)), Struct_1(vec2<i32>(i32(-2147483648), 0i), vec3<bool>(true, true, true), vec3<u32>(31846u, 3298u, 12303u), vec2<f32>(267f, -970f)), Struct_1(vec2<i32>(-41100i, 2147483647i), vec3<bool>(false, false, false), vec3<u32>(4294967295u, 23466u, 32489u), vec2<f32>(361f, -1225f)), Struct_1(vec2<i32>(-7475i, -30596i), vec3<bool>(true, true, false), vec3<u32>(4294967295u, 53722u, 26202u), vec2<f32>(-1000f, 2104f)), Struct_1(vec2<i32>(-1i, 13625i), vec3<bool>(false, false, true), vec3<u32>(21420u, 53392u, 0u), vec2<f32>(-749f, 659f)), Struct_1(vec2<i32>(-1i, 0i), vec3<bool>(true, false, false), vec3<u32>(1u, 53231u, 0u), vec2<f32>(-1000f, -777f)), Struct_1(vec2<i32>(-1i, 28692i), vec3<bool>(false, true, false), vec3<u32>(32912u, 0u, 1u), vec2<f32>(-176f, -295f)));

var<private> global2: array<bool, 31> = array<bool, 31>(true, true, true, true, true, true, false, false, false, false, false, false, false, true, true, false, true, true, false, true, true, true, true, false, false, true, false, true, false, true, true);

var<private> global3: Struct_2;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(34257i, -51195i), vec3<bool>(true, true, true), vec3<u32>(32070u, 31205u, 7797u), vec2<f32>(1097f, 1456f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 11>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)))))), global4.d.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, _wgslsmith_f_op_f32(2490f - 320f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1381f, 1000f), vec2<f32>(var_0.x, -266f))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d.x, global4.d.x)), _wgslsmith_f_op_vec2_f32(ceil(global4.d)), false)))) - global4.d);
    var var_2 = Struct_2(!vec2<bool>(global2[_wgslsmith_index_u32(max(_wgslsmith_add_u32(global4.c.x, 4294967295u), global4.c.x), 31u)], true || (true | global0.x)));
    var var_3 = Struct_2(vec2<bool>(global2[_wgslsmith_index_u32((global4.c.x ^ 4294967295u) << (~6698u % 32u), 31u)] || true, var_2.a.x));
    return ~u_input.a;
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: f32) -> vec2<i32> {
    global3 = Struct_2(!select(select(vec2<bool>(true, false), global4.b.xz, !global0.zw), vec2<bool>(all(global0.ywx), false), global4.b.zy));
    return vec2<i32>(global4.a.x, countOneBits(22587i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global2 = array<bool, 31>();
    global4 = global1[_wgslsmith_index_u32(~countOneBits(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(arg_0.c.x), _wgslsmith_sub_u32(0u, arg_0.c.x), arg_0.c.x), u_input.a, reverseBits(firstLeadingBit(arg_0.c.x)))), 11u)];
    global4 = Struct_1(-vec2<i32>((global4.a.x >> (0u % 32u)) ^ arg_1.a.x, -2466i), !arg_1.b, firstTrailingBit((arg_1.c >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.c.x, 4294967295u, 1u), arg_1.c, arg_0.c) % vec3<u32>(32u))) >> (vec3<u32>(u_input.a & arg_0.c.x, 1u | global4.c.x, ~1u) % vec3<u32>(32u))), vec2<f32>(-436f, _wgslsmith_f_op_f32(-228f + _wgslsmith_f_op_f32(f32(-1f) * -918f))));
    var var_0 = Struct_1(~vec2<i32>(global4.a.x | _wgslsmith_mod_i32(arg_1.a.x, 2147483647i), ~(~global4.a.x)), global0.yxz, vec3<u32>(_wgslsmith_dot_vec3_u32(global4.c, arg_0.c), global4.c.x, firstTrailingBit(~_wgslsmith_mod_u32(global4.c.x, global4.c.x))), arg_1.d);
    var_0 = Struct_1(global4.a, arg_1.b, firstTrailingBit(countOneBits(~vec3<u32>(25754u, arg_0.c.x, 38373u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.d)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d), vec2<f32>(var_0.d.x, -782f))))));
    return var_0.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(!(!vec4<bool>(global4.b.x, global2[_wgslsmith_index_u32(u_input.a, 31u)], global3.a.x, true)), !select(vec4<bool>(global0.x, false, false, true), vec4<bool>(global3.a.x, true, false, global0.x), vec4<bool>(false, global2[_wgslsmith_index_u32(5691u, 31u)], true, global4.b.x)), vec4<bool>(true, global4.b.x, global2[_wgslsmith_index_u32(global4.c.x, 31u)], global0.x & true)), select(vec4<bool>(true, global4.b.x, all(select(vec2<bool>(false, false), global3.a, global0.yz)), !global4.b.x), !(!(!vec4<bool>(global2[_wgslsmith_index_u32(global4.c.x, 31u)], global3.a.x, global4.b.x, true))), any(vec4<bool>(global4.d.x <= 1204f, false, 239f != global4.d.x, false))), !vec4<bool>(global0.x, true, true, any(global4.b.zy)));
    global1 = array<Struct_1, 11>();
    let var_0 = 1i;
    var var_1 = abs(_wgslsmith_mod_i32(_wgslsmith_mod_i32(-select(41210i, var_0, false), -1i), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(36173u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.d.x, -337f, global4.d.x, -872f) * vec4<f32>(global4.d.x, 512f, 1062f, 177f))))), _wgslsmith_clamp_u32(func_1(), u_input.a & (~global4.c.x | ~27276u), ~(~abs(1u))), global4.d, _wgslsmith_add_i32(func_3(global1[_wgslsmith_index_u32(u_input.a, 11u)], Struct_1(func_2(-953f, global4.d.x, global4.d.x), select(vec3<bool>(false, false, global0.x), global0.yxy, false), ~global4.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(1413f, 1070f) * vec2<f32>(global4.d.x, -674f))), Struct_2(vec2<bool>(global2[_wgslsmith_index_u32(global4.c.x, 31u)], global2[_wgslsmith_index_u32(u_input.a, 31u)]))), min(-(1i | global4.a.x), max(_wgslsmith_mult_i32(global4.a.x, global4.a.x), -2147483647i))));
}

