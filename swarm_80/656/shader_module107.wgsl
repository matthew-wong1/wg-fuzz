struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
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

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

var<private> global2: Struct_1 = Struct_1(vec2<u32>(10671u, 72875u), -10185i, vec3<u32>(0u, 1u, 3212u));

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<u32>(4294967295u, 1613u), 38148i, vec3<u32>(27960u, 1u, 1u)), Struct_1(vec2<u32>(1u, 47527u), -1i, vec3<u32>(0u, 5285u, 62456u)), Struct_1(vec2<u32>(1u, 1u), -1i, vec3<u32>(0u, 10751u, 22119u)), Struct_1(vec2<u32>(23847u, 1u), 60037i, vec3<u32>(19300u, 19495u, 40884u)), Struct_1(vec2<u32>(19510u, 1u), 0i, vec3<u32>(69225u, 3375u, 78769u)), Struct_1(vec2<u32>(10661u, 74292u), 0i, vec3<u32>(13448u, 0u, 1u)), Struct_1(vec2<u32>(1u, 0u), 2147483647i, vec3<u32>(0u, 0u, 78840u)), Struct_1(vec2<u32>(20496u, 16972u), 1i, vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec2<u32>(5852u, 4294967295u), 44664i, vec3<u32>(4294967295u, 0u, 46668u)), Struct_1(vec2<u32>(4294967295u, 12375u), 1i, vec3<u32>(30722u, 4975u, 65842u)), Struct_1(vec2<u32>(1u, 0u), -1i, vec3<u32>(3251u, 96299u, 4294967295u)), Struct_1(vec2<u32>(42309u, 59549u), 0i, vec3<u32>(107872u, 37596u, 0u)), Struct_1(vec2<u32>(1u, 14263u), 2147483647i, vec3<u32>(55786u, 18897u, 26343u)), Struct_1(vec2<u32>(30693u, 0u), -42709i, vec3<u32>(41887u, 0u, 1u)), Struct_1(vec2<u32>(4294967295u, 40011u), -1i, vec3<u32>(6807u, 4294967295u, 11807u)), Struct_1(vec2<u32>(16274u, 4294967295u), 13589i, vec3<u32>(1u, 1u, 4294967295u)), Struct_1(vec2<u32>(102366u, 80836u), -1i, vec3<u32>(1u, 78773u, 4294967295u)), Struct_1(vec2<u32>(4294967295u, 18445u), 27720i, vec3<u32>(0u, 0u, 61539u)), Struct_1(vec2<u32>(0u, 59017u), i32(-2147483648), vec3<u32>(0u, 0u, 22868u)), Struct_1(vec2<u32>(102645u, 44629u), 0i, vec3<u32>(1u, 42561u, 0u)), Struct_1(vec2<u32>(33726u, 0u), 0i, vec3<u32>(4294967295u, 0u, 1u)));

var<private> global4: Struct_1 = Struct_1(vec2<u32>(0u, 4294967295u), 1i, vec3<u32>(0u, 12964u, 1u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<bool> {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec4_u32(~(~firstTrailingBit(vec4<u32>(global2.c.x, 1u, 1u, 4294967295u))), countOneBits(vec4<u32>(min(global4.a.x, global2.c.x), abs(4294967295u), abs(global4.c.x), 8829u))));
    let var_1 = global3[_wgslsmith_index_u32(global2.c.x, 21u)];
    global3 = array<Struct_1, 21>();
    var var_2 = Struct_1(_wgslsmith_clamp_vec2_u32(select(_wgslsmith_mult_vec2_u32(global2.c.xx, global4.a) & ~vec2<u32>(global2.c.x, global2.a.x), vec2<u32>(var_1.c.x, 65386u), global1.zy), global2.a, abs(global2.a)), min(reverseBits(u_input.a), ~u_input.b), _wgslsmith_sub_vec3_u32(var_0.wyz, reverseBits(vec3<u32>(1u, 1u, global4.a.x) << (global4.c % vec3<u32>(32u)))) ^ var_1.c);
    let var_3 = var_0.x;
    return select(select(vec4<bool>(false, false, any(select(global1.yx, vec2<bool>(global1.x, true), global1.yz)), true), vec4<bool>(false, all(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, false, true), vec3<bool>(true, global1.x, global1.x))), select(global2.b, u_input.b, global1.x) < -var_2.b, global1.x), true), vec4<bool>(true, global1.x, select(any(vec3<bool>(true, false, global1.x)) && global1.x, _wgslsmith_f_op_f32(1073f + -331f) == _wgslsmith_f_op_f32(sign(853f)), !any(vec3<bool>(true, true, false))), true), vec4<bool>(false, false, !global1.x, true));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<i32>) -> vec3<u32> {
    global2 = global3[_wgslsmith_index_u32(~select(_wgslsmith_sub_u32(select(22920u, ~global2.a.x, global1.x | false), ~global2.c.x), ~(~(1u << (arg_1.c.x % 32u))), all(func_3())), 21u)];
    global2 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    global4 = global3[_wgslsmith_index_u32(1u, 21u)];
    var var_0 = ~(~(~23160u));
    let var_1 = global4.c.x;
    return ~(~arg_0.c);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    return Struct_1(vec2<u32>(2194u, firstLeadingBit(15891u)), 38078i, select(abs(global2.c), func_2(global3[_wgslsmith_index_u32(reverseBits(select(global2.a.x, 1u, global1.x)), 21u)], arg_1, -2147483647i, -vec3<i32>(u_input.b, 912i, 0i) << ((global2.c & vec3<u32>(global2.c.x, arg_1.c.x, global2.a.x)) % vec3<u32>(32u))), !(any(arg_2) & arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(37010u, 21u)];
    global4 = func_1(select(!select(!vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, false)), vec3<bool>(!(!global1.x), !(true != global1.x), false), vec3<bool>(global1.x, any(vec3<bool>(global1.x, false, global1.x)), global1.x)), Struct_1(_wgslsmith_mod_vec2_u32(global4.a ^ global2.a, vec2<u32>(4294967295u, global4.a.x) >> (global4.c.yz % vec2<u32>(32u))), _wgslsmith_div_i32(countOneBits(~(-377i)), 1i), ~(~vec3<u32>(global2.a.x, 55190u, 96857u)) | vec3<u32>(abs(0u), global4.a.x, reverseBits(global2.a.x))), vec2<bool>(false, select(all(!vec3<bool>(global1.x, global1.x, global1.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-52875i, 56315i), vec2<i32>(global2.b, u_input.a)) > ~0i, any(vec2<bool>(true, true)))));
    global2 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(func_1(select(select(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, global1.x), global1.x), !vec3<bool>(true, global1.x, true), !vec3<bool>(true, global1.x, global1.x)), func_3().yxw, all(!vec4<bool>(global1.x, global1.x, global1.x, false))), global3[_wgslsmith_index_u32(~(~0u) >> ((global4.c.x | _wgslsmith_add_u32(0u, global2.a.x)) % 32u), 21u)], vec2<bool>((10993u > global2.c.x) && func_3().x, global1.x)).c.x, reverseBits(4294967295u)), 21u)];
    var var_0 = _wgslsmith_clamp_vec4_u32(firstLeadingBit(~reverseBits(vec4<u32>(global2.c.x, 4294967295u, 1u, 7670u))), ~(vec4<u32>(1u, ~4294967295u, global4.c.x, ~1u) ^ ~(vec4<u32>(1u, 4294967295u, 20503u, 33602u) ^ vec4<u32>(global4.c.x, global4.a.x, 0u, global2.c.x))), ~select(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(33112u, 4294967295u, global2.a.x, 37321u), vec4<u32>(global2.a.x, global2.a.x, 46147u, 4294967295u))), vec4<u32>(min(global2.a.x, global2.c.x), firstTrailingBit(0u), ~global2.a.x, _wgslsmith_sub_u32(4294967295u, global4.c.x)), func_3()));
    var var_1 = Struct_1(vec2<u32>(firstTrailingBit(~1u), 1u) | max(~(~global2.a), ~(~vec2<u32>(11662u, 92754u))), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(~abs(vec3<i32>(global2.b, -1i, u_input.a)), ~(-vec3<i32>(-1i, -2147483647i, 1i))), vec3<i32>(u_input.a, select(_wgslsmith_div_i32(7266i, global2.b), -22250i, global1.x), -10656i >> (_wgslsmith_dot_vec2_u32(global2.c.xx, global4.a) % 32u))), _wgslsmith_sub_vec3_u32(global2.c, vec3<u32>(0u, 29132u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(-1089f, _wgslsmith_f_op_f32(-170f * 439f), true)));
}

