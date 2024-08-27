struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: array<u32, 11> = array<u32, 11>(6768u, 63995u, 4294967295u, 0u, 4294967295u, 0u, 35235u, 1u, 4294967295u, 1u, 19812u);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(39949u, vec4<u32>(0u, 0u, 10383u, 0u)), Struct_1(11355u, vec4<u32>(60186u, 81555u, 4294967295u, 0u)), Struct_1(0u, vec4<u32>(0u, 4294967295u, 0u, 0u)), Struct_1(0u, vec4<u32>(37098u, 1u, 9512u, 11484u)), Struct_1(69152u, vec4<u32>(0u, 0u, 0u, 36352u)), Struct_1(45130u, vec4<u32>(33891u, 16378u, 0u, 24686u)), Struct_1(1u, vec4<u32>(1u, 9394u, 1u, 34254u)), Struct_1(1u, vec4<u32>(6265u, 0u, 63822u, 0u)), Struct_1(16919u, vec4<u32>(63044u, 4294967295u, 12219u, 60323u)), Struct_1(20861u, vec4<u32>(29664u, 0u, 4294967295u, 1778u)), Struct_1(36434u, vec4<u32>(4294967295u, 4294967295u, 29283u, 45771u)), Struct_1(15765u, vec4<u32>(1u, 4294967295u, 8282u, 21111u)), Struct_1(4294967295u, vec4<u32>(1364u, 9270u, 1u, 67641u)), Struct_1(46861u, vec4<u32>(0u, 1u, 38244u, 0u)), Struct_1(159u, vec4<u32>(0u, 39999u, 0u, 12525u)), Struct_1(67917u, vec4<u32>(0u, 4294967295u, 1u, 127807u)), Struct_1(10128u, vec4<u32>(4294967295u, 0u, 12375u, 21223u)), Struct_1(105293u, vec4<u32>(47617u, 32919u, 1u, 0u)), Struct_1(19343u, vec4<u32>(1u, 1u, 5975u, 72085u)), Struct_1(4294967295u, vec4<u32>(0u, 25048u, 4294967295u, 116582u)), Struct_1(12554u, vec4<u32>(1u, 4294967295u, 0u, 17144u)), Struct_1(20895u, vec4<u32>(1u, 0u, 1u, 4294967295u)), Struct_1(4294967295u, vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(0u, vec4<u32>(26642u, 0u, 1u, 17466u)), Struct_1(23793u, vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(0u, vec4<u32>(124313u, 34272u, 42269u, 0u)), Struct_1(1u, vec4<u32>(4294967295u, 0u, 4294967295u, 100572u)), Struct_1(0u, vec4<u32>(0u, 1u, 1u, 44331u)), Struct_1(56958u, vec4<u32>(1u, 62957u, 4294967295u, 0u)), Struct_1(47024u, vec4<u32>(49510u, 1u, 55142u, 16367u)), Struct_1(0u, vec4<u32>(1u, 23343u, 4846u, 1u)), Struct_1(0u, vec4<u32>(32902u, 1u, 1u, 65620u)));

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = ~(~vec2<i32>(1i, 1i));
    global1 = array<u32, 11>();
    var var_1 = _wgslsmith_sub_vec2_i32(var_0 | abs(select(-var_0, _wgslsmith_mult_vec2_i32(var_0, var_0), true)), -_wgslsmith_mult_vec2_i32(var_0, ~vec2<i32>(var_0.x, -50865i) << (arg_0.b.xy % vec2<u32>(32u))));
    return vec2<i32>(var_0.x, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3.b.wyy;
    var var_1 = ~((_wgslsmith_mult_vec3_i32(select(vec3<i32>(2147483647i, -32460i, 14309i), vec3<i32>(25826i, -1i, -7019i), vec3<bool>(false, true, true)), -vec3<i32>(0i, 1i, 2147483647i)) >> ((global3.b.ywz | ~global3.b.yzx) % vec3<u32>(32u))) & (_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 1i, 1i), -vec3<i32>(-23209i, 1i, 1i)) >> (abs(global3.b.ywz) % vec3<u32>(32u))));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    var var_2 = 0u;
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x | max(min(var_1.x, var_1.x), -19001i), -26967i), select(func_1(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, 1u), 32u)], global0[_wgslsmith_index_u32(firstTrailingBit(10324u), 6u)]), ~func_1(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34606u, 11u)], 32u)], Struct_2(global2[_wgslsmith_index_u32(4294967295u, 32u)], global2[_wgslsmith_index_u32(global3.b.x, 32u)])) >> (vec2<u32>(u_input.a ^ 7001u, var_0.x) % vec2<u32>(32u)), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(~(~4294967295u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(54682u, 0u, 4294967295u, u_input.a), global3.b)));
}

